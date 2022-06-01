# Function to compute the volume of a sphere with radius r
volume <- function(r) {
    4/3 * pi * r^3
}

# Function to compute the volumes of the spheres with radius r, r^2 and r^3 
volume_vector <- function(r) {
    volumes = c()
    for (pw in 1:3){
        volumes = c(volumes, volume(r^pw))
    }
    volumes
}

# Run volume_vector(r) and print the volumes of the spheres with radius r, r^2 and r^3 
r <- 1
volume_vector(r)

