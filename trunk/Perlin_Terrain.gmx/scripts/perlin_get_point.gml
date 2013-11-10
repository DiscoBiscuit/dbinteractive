      integer_X    = floor(argument0/grid)*grid
      fractional_X = argument0 - integer_X

      integer_Y    = floor(argument1/grid)*grid
      fractional_Y = argument1 - integer_Y

      v1 = smooth_noise(integer_X/grid,     integer_Y/grid,argument2)
      v2 = smooth_noise(integer_X/grid + 1, integer_Y/grid,argument2)
      v3 = smooth_noise(integer_X/grid,     integer_Y/grid + 1,argument2)
      v4 = smooth_noise(integer_X/grid + 1, integer_Y/grid + 1,argument2)

      i1 = interpolate(v1 , v2 , fractional_X/grid)
      i2 = interpolate(v3 , v4 , fractional_X/grid)

      return interpolate(i1 , i2 , fractional_Y/grid)
