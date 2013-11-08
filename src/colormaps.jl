export GrayColormap,
       JetColormap,
       BuGnColormap,
       colorbar

#default colors
function default_color(i::Int)
    cs = [0x000000, 0xED2C30, 0x008C46, 0x1859A9,
          0xF37C21, 0x652B91, 0xA11C20, 0xB33794]
    cs[mod1(i,length(cs))]
end

########################
#linear interpolation & expand of colormaps
function cmap_interp(cmap,bins)
    cmap2 = zeros(bins,3)

    xn, yn = size(cmap)
    step=int(floor(bins/(xn-1)))
    
    for j in [1:xn-1]
        cstart=(j-1)*step+1
        if j == xn-1
            cstop=bins
            step=bins-cstart+1
        else
            cstop=j*step    
        end

        for q in [1,2,3]
            start=cmap[j,q]
            stop=cmap[j+1,q]
            cmap2[cstart:cstop,q]=linspace(start,stop,step)
        end
    end

    cmap2/256.
end

const BuGnCM=[247 252 253;
              229 245 249;
              204 236 230;
              153 216 201;
              102 194 164;
              65 174 118;
              35 139 69;
              0 109 44;
              0 68 27]

cmap = cmap_interp(BuGnCM,256)
BuGnColormap() = Uint32[convert(RGB24, RGB(cmap[i,1],cmap[i,2],cmap[i,3])) for i in 1:256]

#exit()



# jetrgb
# from http://www.metastine.com/?p=7
function jetrgb(x)
    fourValue = 4x
    r = min(fourValue - 1.5, -fourValue + 4.5)
    g = min(fourValue - 0.5, -fourValue + 3.5)
    b = min(fourValue + 0.5, -fourValue + 2.5)
    RGB(clamp(r,0.,1.), clamp(g,0.,1.), clamp(b,0.,1.))
end
JetColormap() = Uint32[ convert(RGB24,jetrgb(i/256)) for i = 1:256 ]

#grayscale
GrayColormap() = Uint32[ convert(RGB24,RGB(i/255,i/255,i/255)) for i = 0:255 ]
#GrayColormap() = Uint32[ convert(RGB24,RGB(255/i,255/i,255/i)) for i = 0:255 ]


_default_colormap = JetColormap()
#######################

#data2rgb
typealias Interval (Real,Real)

function data2rgb{T<:Real}(data::AbstractArray{T,2}, limits::Interval, colormap)
    img = similar(data, Uint32)
    ncolors = length(colormap)
    limlower = limits[1]
    limscale = ncolors/(limits[2]-limits[1])
    for i = 1:length(data)
        datai = data[i]
        if isfinite(datai)
            idxr = limscale*(datai - limlower)
            idx = itrunc(idxr)
            idx += idxr > convert(T, idx)
            if idx < 1 idx = 1 end
            if idx > ncolors idx = ncolors end
            img[i] = colormap[idx]
        else
            img[i] = 0x00000000
        end
    end
    img
end

#colorbar
function colorbar(dmin, dmax; orientation="horizontal", colormap=_default_colormap, kvs...)

    if orientation == "vertical"
        p=FramedPlot(aspect_ratio=5.0)
        setattr(p.x, draw_ticks=false)
        setattr(p.y1, draw_ticks=false)
        setattr(p.x1, draw_ticklabels=false)
        setattr(p.y1, draw_ticklabels=false)
        setattr(p.y2, draw_ticklabels=true) 

        xr=(1,2)
        yr=(dmin,dmax)

        y=linspace(dmin,dmax,128)*1.0
        data=[y y]
    elseif orientation == "horizontal"
        p=FramedPlot(aspect_ratio=0.15)
        setattr(p.y, draw_ticks=false)
        setattr(p.x1, draw_ticks=false)
        setattr(p.y1, draw_ticklabels=false)
        setattr(p.x1, draw_ticklabels=false)
        setattr(p.x2, draw_ticklabels=true) 

        yr=(1,2)
        xr=(dmin,dmax)

        x=linspace(dmin,dmax,128)*1.0
        data=[x', x']
    end

    setattr(p,:xrange, xr)
    setattr(p,:yrange, yr)

    setattr(p; kvs...)
    ts = getattr(p,:title_style)
    ts[:fontsize]= 10.0

    clims = (minimum(data),maximum(data))

    img = data2rgb(data, clims, colormap)
    add(p, Image(xr, yr, img))
    p
end

