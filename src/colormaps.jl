export cmap,
       GrayColormap,
       JetColormap

#get_cmap

#default colors
function default_color(i::Int)
    cs = [0x000000, 0xED2C30, 0x008C46, 0x1859A9,
          0xF37C21, 0x652B91, 0xA11C20, 0xB33794]
    cs[mod1(i,length(cs))]
end

#Colormap coefficients
########################
SCols = [0x000000, 0xED2C30, 0x008C46, 0x1859A9,
         0xF37C21, 0x652B91, 0xA11C20, 0xB33794]
    

#Sequential (single hue)
Blues=[9.559659e-01 9.747080e-01 1.003551e+00;
       -9.370225e-04 -1.151277e-03 -1.706049e-03;
       -3.971999e-05 -1.069075e-05 9.212241e-06;
       1.142209e-07 1.198050e-08 -4.447000e-08]
       
Greens=[9.593198e-01 9.846117e-01 9.669350e-01;
        -5.410076e-04 -5.903750e-04 -3.028608e-03;
        -4.229281e-05 -9.012518e-06 -1.072958e-05;
        1.158454e-07 1.218356e-09 3.705833e-08]
          
Grays=[9.980666e-01 9.980666e-01 9.980666e-01;
       -1.442721e-03 -1.442721e-03 -1.442721e-03;
       -1.672545e-05 -1.672545e-05 -1.672545e-05;
       2.761607e-08 2.761607e-08 2.761607e-08]
         
Oranges=[9.920691e-01 9.559265e-01 9.311474e-01;
         -1.964675e-04 -8.511528e-04 -3.688599e-03;
         8.396704e-06 -2.805143e-05 -2.703062e-05;
         -6.091781e-08 7.482737e-08 1.088398e-07]
           
Purples=[9.894650e-01 9.801531e-01 9.875316e-01;
         -1.403920e-03 -1.136202e-03 -5.879288e-04;
         -1.707219e-05 -1.659091e-05 -9.639427e-06;
         4.416541e-08 2.325030e-08 1.665087e-08]
           
Reds=[9.952257e-01 9.599511e-01 9.561632e-01;
      -5.211281e-04 -1.949982e-03 -5.060349e-03;
      1.231350e-05 -3.115130e-05 -6.522910e-06;
      -7.624879e-08 9.493025e-08 4.985107e-08]
        
#Sequential (multihue)
BuGn=[9.676847e-01 9.855587e-01 9.802715e-01;
      -9.701797e-04 -5.641587e-04 1.496480e-03;
      -4.045647e-05 -9.203919e-06 -4.815553e-05;
      1.151347e-07 1.522945e-09 1.127995e-07]
    
BuPu=[9.639120e-01 9.879565e-01 9.869124e-01;
      -8.294118e-04 -2.828610e-03 -4.661925e-04;
      -7.642673e-05 2.038992e-05 -1.982084e-05;
      6.301869e-07 -2.583071e-07 1.201643e-07;
      -1.402488e-09 6.350888e-10 -3.021082e-10]
    
GnBu=[9.504419e-01 9.773516e-01 9.546638e-01;
      -2.806573e-04 -2.714322e-04 -5.756753e-03;
      -4.090723e-05 -9.044418e-06 5.198217e-05;
      1.085352e-07 -4.670365e-09 -1.425477e-07]
    
OrRd=[9.958965e-01 9.445234e-01 9.156802e-01;
      -4.754006e-04 1.050626e-03 -4.047374e-03;
      1.089186e-05 -4.685732e-05 -5.952866e-06;
      -6.568970e-08 1.088398e-07 2.913902e-08]

PuBu=[9.820470e-01 9.659091e-01 9.895833e-01;
      7.300626e-04 -2.059416e-03 -2.242488e-03;
      -6.251897e-05 -2.837736e-06 1.530380e-05;
      1.755448e-07 -2.132123e-09 -6.396370e-08]

PuBuGn=[9.850458e-01 9.675663e-01 9.683554e-01;
        6.136882e-04 -2.797407e-03 -5.190502e-04;
        -6.332757e-05 5.829426e-06 -3.256601e-06;
        1.802152e-07 -2.101664e-08 -2.660078e-08]

PuRd=[9.634779e-01 9.558384e-01 9.764532e-01;
      2.204154e-03 -2.920137e-03 -2.535065e-03;
      -1.937226e-04 1.816475e-05 3.565174e-05;
      2.647095e-06 -5.673791e-07 -4.623134e-07;
      -1.289693e-08 3.176547e-09 1.769649e-09;
      2.050894e-11 -5.022598e-12 -2.168849e-12]
    
RdPu=[9.820470e-01 9.487453e-01 9.491793e-01;
      8.265722e-04 3.077873e-04 -3.148372e-03;
      -5.090172e-06 -5.752033e-05 6.047180e-06;
      -3.614457e-08 1.638689e-07 -7.716256e-09]
    
YlGn=[9.975142e-01 9.951862e-01 8.765388e-01;
      5.974486e-04 2.584788e-04 -3.993100e-03;
      -5.644266e-05 -1.957844e-05 5.380049e-06;
      1.519899e-07 2.903749e-08 -3.350479e-09]
    
YlGnBu=[9.930707e-01 9.958024e-01 8.548496e-01;
        1.576140e-04 6.587510e-04 9.142614e-04;
        -4.697740e-05 -6.111263e-05 -1.031117e-04;
        -5.216556e-07 6.133486e-07 1.330445e-06;
        5.732338e-09 -3.227266e-09 -6.134782e-09;
        -1.255649e-11 5.935797e-12 9.131996e-12]
    
YlOrBr=[9.909643e-01 9.932528e-01 9.125631e-01;
        6.336710e-05 5.679608e-04 -6.081841e-03;
        6.355087e-06 -4.195439e-05 -3.929280e-06;
        -6.254228e-08 1.047786e-07 5.645050e-08]
    
YlOrRd=[1.002762e+00 9.738005e-01 8.046875e-01;
        -1.190226e-03 1.313128e-03 -6.537628e-03;
        2.147304e-05 -5.848428e-05 1.552849e-05;
        -9.614861e-08 1.494517e-07 6.091781e-10]

#

BrBG=[3.426573e-01 2.117843e-01 2.767155e-02;
      4.634897e-03 -1.562274e-03 -7.772983e-03;
      1.188491e-04 1.823371e-04 3.204561e-04;
      -1.308644e-06 -1.287090e-06 -2.097253e-06;
      2.942200e-09 2.341916e-09 3.806286e-09]


#####################
#cmap
#Main function to handle the colormaps
function cmap(colmap,n=256; logscale=false, bottom=nothing, top=nothing)

    cm = Array(Uint32,n)
    if isa(colmap, String)
        arr = eval(symbol(colmap))

        #Sequential & diverging colormaps
        #these are stored in 2dim arrays
        if ndims(arr) == 2
            cm = colmap_fit(arr, n, logscale)

        #Qualitative colormaps
        #other maps are 1 dimensional (RGB24)
        else
            cm = arr
        end
    else
        error("You cannot give me your own map yet")
    end

    #Parsing and adding top & bottom values to colormap
    if bottom != nothing
        if isa(bottom, String)
            bottom=Uint32[convert(RGB24,color(bottom))][1]
        elseif length(bottom) == 3
            bottom=Uint32[convert(RGB24, RGB(bottom[1], bottom[2], bottom[3]))][1]
        end
        unshift!(cm, bottom)
    end
    if top != nothing
        if isa(top, String)
            top=Uint32[convert(RGB24,color(top))][1]
        elseif length(top) == 3
            top=Uint32[convert(RGB24, RGB(top[1], top[2], top[3]))][1]
        end
        push!(cm, top)
    end

    cm
end

#Colmap_fit
#Fit the colormaps with polynomials return RGB24
function colmap_fit(coeff, n, logscale)

    function polyn(x,c)
        f=zeros(length(x))
        for k in 1:length(c)
            f[:] += c[k].*x.^(k-1)
        end
        f
    end

    x=linspace(0,255,n)
    if logscale
        x=logspace(-1,log10(255.0),n)
    end

    cmr = clamp(polyn(x,coeff[:,1]), 0.0, 1.0)
    cmg = clamp(polyn(x,coeff[:,2]), 0.0, 1.0)
    cmb = clamp(polyn(x,coeff[:,3]), 0.0, 1.0)

    Uint32[convert(RGB24, RGB(cmr[i],cmg[i],cmb[i])) for i in 1:n]
end


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
GrayColormap() = flipud(Uint32[ convert(RGB24,RGB(i/255,i/255,i/255)) for i = 0:255 ])

_default_colormap = JetColormap()

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

