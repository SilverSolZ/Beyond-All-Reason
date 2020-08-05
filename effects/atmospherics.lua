-- Atmospheric Map Effects

return {
  ["fogdirty"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.94,
        colormap           = [[0 0 0 0.0  0.15 0.14 0.13 0.08   0.1 0.1 0.1 0.04   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 60,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0.030, 0]],
        numparticles       = 5,
        particlelife       = 300,
        particlelifespread = 180,
        particlesize       = 100,
        particlesizespread = 450,
        particlespeed      = 6.5,
        particlespeedspread = 4.5,
        pos                = [[-200 r900, -50 r75, 0 r900]],
        sizegrowth         = [[0.3 r0.2]],
        sizemod            = 1,
        texture            = [[fogdirty]],
        alwaysvisible      = true,
      },
    },
  },

  ["sandstorm"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 50,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:sandblast]],
        pos                = [[-25 r750, -20 r30, -25 r750]],
      },
    },
  },

  ["sandblast"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      unit               = false,
      properties = {
        airdrag            = 0.98,
        colormap           = [[0 0 0 0.0  0.05 0.05 0.05 0.03   0.07 0.07 0.07 0.08   0.1 0.1 0.1 0.12   0 0 0 0.01]],
        directional        = false,
        emitrot            = 4,
        emitrotspread      = 4,
        emitvector         = [[1, 0, -0.1]],
        gravity            = [[0, -0.03, -0.01]],
        numparticles       = 4,
        particlelife       = 8,
        particlelifespread = 50,
        particlesize       = 6,
        particlesizespread = 60,
        particlespeed      = 11.5,
        particlespeedspread = 8.5,
        pos                = [[-20 r40, -20 r50, 0 r40]],
        sizegrowth         = [[2 r1.8]],
        sizemod            = 1,
        texture            = [[sandblast]],
        alwaysvisible      = true,
      },
    },
  },

  ["fireflies"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 60,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r750]],
        explosiongenerator = [[custom:firefly]],
        pos                = [[-25 r125, 5 r25, -25 r125]],
      },
    },
  },

  ["firefly"] = {
    -- groundflash = {
    --   circlealpha        = 0.9,
    --   circlegrowth       = -0.05,
    --   flashalpha         = 0.80,
    --   flashsize          = 100,
    --   ttl                = 80,
    --   color = {
    --     [1]  = 0.4,
    --     [2]  = 0.8,
    --     [3]  = 0.1,
    --   },
    --   alwaysvisible      = true,
    -- },
    lightningballs = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater     = true,
      properties = {
        airdrag            = 0.96,
        colormap           = [[0 0 0 0.01   0.68 0.6 0.05 0.018   0.92 0.77 0.15 0.035    0.81 0.72 0.1 0.008   0.3 0.2 0.05 0.005   0 0 0 0.01]],
        directional        = false,
        emitrot            = 90,
        emitrotspread      = 180,
        --emitmul            = [[2, 2, 2]],
        emitvector         = [[1, 1, 1]],
        gravity            = [[0, 0.01, 0]],
        numparticles       = 1,
        particlelife       = 33,
        particlelifespread = 66,
        particlesize       = 4,
        particlesizespread = 35,
        particlespeed      = 0.12,
        particlespeedspread = 0.32,
        pos                = [[-10 r25, 1.0, -10 r25]],
        sizegrowth         = -0.4,
        sizemod            = 1.0,
        texture            = [[flare1]],
        alwaysvisible      = true,
      },
    },
  },

  ["rain"] = {
    usedefaultexplosions = false,
    raindrops = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 240,
      ground             = true,
      water              = true,
      underwater         = false,
      properties = {
        delay              = [[1 r480]],
        explosiongenerator = [[custom:raindrop]],
        pos                = [[-250 r750, 1250 r150, -250 r750]],
      },
    },
  },

  ["raindrop"] = {
    usedefaultexplosions = false,
    grounddust = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = false,
      unit               = false,
      properties = {
        airdrag            = 1,
        colormap           = [[0 0 0 0   0.07 0.07 0.07 0.03   0.1 0.1 0.1 0.09   0 0 0 0.1]],
        directional        = true,
        emitrot            = 180,
        emitrotspread      = 10,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 2,
        particlelife       = 40,
        particlelifespread = 90,
        particlesize       = 25,
        particlesizespread = 90,
        particlespeed      = 10,
        particlespeedspread = 13,
        pos                = [[200 r900, r500, 200 r900]],
        sizegrowth         = 0.8,
        sizemod            = 1,
        texture            = [[rain]],
        alwaysvisible      = true,
      },
    },
  },
}