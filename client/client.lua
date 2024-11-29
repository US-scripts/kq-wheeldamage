local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
L0_1.ESC = 322
L0_1.F1 = 288
L0_1.F2 = 289
L0_1.F3 = 170
L0_1.F5 = 166
L0_1.F6 = 167
L0_1.F7 = 168
L0_1.F8 = 169
L0_1.F9 = 56
L0_1.F10 = 57
L0_1["~"] = 243
L0_1["1"] = 157
L0_1["2"] = 158
L0_1["3"] = 160
L0_1["4"] = 164
L0_1["5"] = 165
L0_1["6"] = 159
L0_1["7"] = 161
L0_1["8"] = 162
L0_1["9"] = 163
L0_1["-"] = 84
L0_1["="] = 83
L0_1.BACKSPACE = 177
L0_1.TAB = 37
L0_1.Q = 44
L0_1.W = 32
L0_1.E = 38
L0_1.R = 45
L0_1.T = 245
L0_1.Y = 246
L0_1.U = 303
L0_1.P = 199
L0_1["["] = 39
L0_1["]"] = 40
L0_1.ENTER = 18
L0_1.CAPS = 137
L0_1.A = 34
L0_1.S = 8
L0_1.D = 9
L0_1.F = 23
L0_1.G = 47
L0_1.H = 74
L0_1.K = 311
L0_1.L = 182
L0_1.LEFTSHIFT = 21
L0_1.Z = 20
L0_1.X = 73
L0_1.C = 26
L0_1.V = 0
L0_1.B = 29
L0_1.N = 249
L0_1.M = 244
L0_1[","] = 82
L0_1["."] = 81
L0_1.LEFTCTRL = 36
L0_1.LEFTALT = 19
L0_1.SPACE = 22
L0_1.RIGHTCTRL = 70
L0_1.HOME = 213
L0_1.PAGEUP = 10
L0_1.PAGEDOWN = 11
L0_1.DELETE = 178
L0_1.LEFT = 174
L0_1.RIGHT = 175
L0_1.TOP = 27
L0_1.DOWN = 173
L0_1.NENTER = 201
L0_1.N4 = 108
L0_1.N5 = 60
L0_1.N6 = 107
L0_1["N+"] = 96
L0_1["N-"] = 97
L0_1.N7 = 117
L0_1.N8 = 61
L0_1.N9 = 118
L1_1 = Config
L1_1 = L1_1.wheelModel
if not L1_1 then
  L1_1 = "prop_tornado_wheel"
end
L2_1 = Config
L2_1 = L2_1.rimModel
if not L2_1 then
  L2_1 = "prop_wheel_rim_03"
end
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L7_1.wheel_lf = 0
L7_1.wheel_rf = 1
L7_1.wheel_lr = 2
L7_1.wheel_rr = 3
L8_1 = {}
L8_1[0] = "wheel_lf"
L8_1[1] = "wheel_rf"
L8_1[2] = "wheel_lr"
L8_1[3] = "wheel_rr"
indexToBone = L8_1
L8_1 = {}
L8_1[0] = 570
L8_1[1] = 568
L8_1[2] = 566
L8_1[3] = 564
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = 0
  L1_2 = 0.0
  while true do
    L2_2 = 2000
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = IsPedInAnyVehicle
    L5_2 = L3_2
    L6_2 = false
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = GetPedInVehicleSeat
      L5_2 = GetVehiclePedIsIn
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      L6_2 = -1
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 == L3_2 then
        L4_2 = GetVehiclePedIsIn
        L5_2 = L3_2
        L6_2 = false
        L4_2 = L4_2(L5_2, L6_2)
        L5_2 = IsBlacklistedFromCache
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L2_2 = 25
          L5_2 = GetEntitySpeed
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          L6_2 = GetEntityVelocity
          L7_2 = L4_2
          L6_2 = L6_2(L7_2)
          L6_2 = L6_2.z
          L7_2 = L6_2 - L1_2
          L8_2 = false
          L9_2 = Config
          L9_2 = L9_2.fallThreshold
          if L7_2 > L9_2 and L5_2 > 4 then
            L9_2 = L0_2 / 1000
            L10_2 = Config
            L10_2 = L10_2.minimumAirTime
            if L9_2 > L10_2 then
              L9_2 = pairs
              L10_2 = L7_1
              L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
              for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
                L15_2 = GetVehicleNumberOfWheels
                L16_2 = L4_2
                L15_2 = L15_2(L16_2)
                L15_2 = L15_2 - 1
                if L14_2 <= L15_2 then
                  L15_2 = GetVehicleWheelSuspensionCompression
                  L16_2 = L4_2
                  L17_2 = L14_2
                  L15_2 = L15_2(L16_2, L17_2)
                  L15_2 = L15_2 + 0.05
                  L15_2 = L15_2 * 5
                  if L15_2 > 1 then
                    L15_2 = 1
                  end
                  L16_2 = Config
                  L16_2 = L16_2.fallDamageMultiplier
                  L16_2 = L16_2.classes
                  L17_2 = GetVehicleClass
                  L18_2 = L4_2
                  L17_2 = L17_2(L18_2)
                  L16_2 = L16_2[L17_2]
                  if not L16_2 then
                    L16_2 = 1
                  end
                  L17_2 = ContainsModel
                  L18_2 = Config
                  L18_2 = L18_2.fallDamageMultiplier
                  L18_2 = L18_2.models
                  L19_2 = L4_2
                  L17_2 = L17_2(L18_2, L19_2)
                  if 0 ~= L17_2 then
                    L17_2 = ContainsModel
                    L18_2 = Config
                    L18_2 = L18_2.fallDamageMultiplier
                    L18_2 = L18_2.models
                    L19_2 = L4_2
                    L17_2 = L17_2(L18_2, L19_2)
                    L16_2 = L17_2
                  end
                  L17_2 = 1
                  L18_2 = Contains
                  L19_2 = Config
                  L19_2 = L19_2.roadSurfaces
                  L20_2 = GetVehicleWheelSurfaceMaterial
                  L21_2 = L4_2
                  L22_2 = L14_2
                  L20_2, L21_2, L22_2, L23_2 = L20_2(L21_2, L22_2)
                  L18_2 = L18_2(L19_2, L20_2, L21_2, L22_2, L23_2)
                  if not L18_2 then
                    L18_2 = Config
                    L18_2 = L18_2.offroadFallDamageMultiplier
                    L18_2 = L18_2.classes
                    L19_2 = GetVehicleClass
                    L20_2 = L4_2
                    L19_2 = L19_2(L20_2)
                    L18_2 = L18_2[L19_2]
                    L17_2 = L18_2 or L17_2
                    if not L18_2 then
                      L17_2 = 1
                    end
                    L18_2 = ContainsModel
                    L19_2 = Config
                    L19_2 = L19_2.offroadFallDamageMultiplier
                    L19_2 = L19_2.models
                    L20_2 = L4_2
                    L18_2 = L18_2(L19_2, L20_2)
                    if 0 ~= L18_2 then
                      L18_2 = ContainsModel
                      L19_2 = Config
                      L19_2 = L19_2.offroadFallDamageMultiplier
                      L19_2 = L19_2.models
                      L20_2 = L4_2
                      L18_2 = L18_2(L19_2, L20_2)
                      L17_2 = L18_2
                      L18_2 = Debug
                      L19_2 = "model specific"
                      L18_2(L19_2)
                    end
                    L18_2 = Debug
                    L19_2 = "is offroad"
                    L18_2(L19_2)
                  end
                  L18_2 = Config
                  L18_2 = L18_2.fallDamageAmount
                  L18_2 = L7_2 * L18_2
                  L18_2 = L18_2 * L16_2
                  L18_2 = L18_2 * L15_2
                  L18_2 = L18_2 * L17_2
                  L19_2 = GetVehicleWheelType
                  L20_2 = L4_2
                  L19_2 = L19_2(L20_2)
                  if 4 == L19_2 then
                    L19_2 = Config
                    L19_2 = L19_2.offroadTireFallDamageMultiplier
                    L18_2 = L18_2 * L19_2
                  end
                  L19_2 = Debug
                  L20_2 = "do fall damage"
                  L19_2(L20_2)
                  L19_2 = ApplyWheelDamage
                  L20_2 = L4_2
                  L21_2 = L14_2
                  L22_2 = L18_2 * L15_2
                  L23_2 = L13_2
                  L19_2(L20_2, L21_2, L22_2, L23_2)
                  L8_2 = true
                end
              end
            end
          end
          if L6_2 < -1 then
            L9_2 = IsVehicleOnAllWheels
            L10_2 = L4_2
            L9_2 = L9_2(L10_2)
            if not L9_2 then
              L0_2 = L0_2 + 25
          end
          elseif 0 ~= L0_2 then
            L9_2 = Debug
            L10_2 = "Airtime"
            L11_2 = L0_2 / 1000
            L12_2 = " seconds"
            L11_2 = L11_2 .. L12_2
            L9_2(L10_2, L11_2)
            L0_2 = 0
          end
          if L8_2 then
            L9_2 = Citizen
            L9_2 = L9_2.Wait
            L10_2 = 100
            L9_2(L10_2)
          end
          L1_2 = L6_2
        end
      end
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = L2_2
    L4_2(L5_2)
  end
end
L9_1(L10_1)
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L0_2 = nil
  while true do
    L1_2 = 2000
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = IsPedInAnyVehicle
    L4_2 = L2_2
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = GetPedInVehicleSeat
      L4_2 = GetVehiclePedIsIn
      L5_2 = PlayerPedId
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L5_2()
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
      L5_2 = -1
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 == L2_2 then
        L3_2 = GetVehiclePedIsIn
        L4_2 = L2_2
        L5_2 = false
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = IsBlacklistedFromCache
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if not L4_2 then
          L4_2 = GetEntitySpeed
          L5_2 = L3_2
          L4_2 = L4_2(L5_2)
          L5_2 = GetVehicleBodyHealth
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          L6_2 = GetVehicleEngineHealth
          L7_2 = L3_2
          L6_2 = L6_2(L7_2)
          L6_2 = L6_2 * 0.4
          L5_2 = L5_2 + L6_2
          if nil == L0_2 or L0_2 < L5_2 then
            L0_2 = L5_2
          end
          L6_2 = L0_2 - L5_2
          L7_2 = 980.0
          if L5_2 < L7_2 and L4_2 > 7 then
            L1_2 = 1
          else
            L1_2 = 50
          end
          L7_2 = GetCollisionNormalOfLastHitForEntity
          L8_2 = L3_2
          L7_2 = L7_2(L8_2)
          L8_2 = L7_2[1]
          if 0.0 ~= L8_2 then
            L8_2 = L7_2[2]
            if 0.0 ~= L8_2 then
              L8_2 = L7_2[3]
              if 0.0 ~= L8_2 and L6_2 > 0 then
                L8_2 = Config
                L8_2 = L8_2.collisionDamageMultiplier
                L8_2 = L8_2.classes
                L9_2 = GetVehicleClass
                L10_2 = L3_2
                L9_2 = L9_2(L10_2)
                L8_2 = L8_2[L9_2]
                if not L8_2 then
                  L8_2 = 1
                end
                L9_2 = ContainsModel
                L10_2 = Config
                L10_2 = L10_2.collisionDamageMultiplier
                L10_2 = L10_2.models
                L11_2 = L3_2
                L9_2 = L9_2(L10_2, L11_2)
                if 0 ~= L9_2 then
                  L9_2 = ContainsModel
                  L10_2 = Config
                  L10_2 = L10_2.collisionDamageMultiplier
                  L10_2 = L10_2.models
                  L11_2 = L3_2
                  L9_2 = L9_2(L10_2, L11_2)
                  L8_2 = L9_2
                end
                L9_2 = math
                L9_2 = L9_2.abs
                L10_2 = L4_2
                L9_2 = L9_2(L10_2)
                L9_2 = L9_2 * 0.1
                L10_2 = L6_2 * 0.7
                L9_2 = L9_2 + L10_2
                L9_2 = L9_2 * 0.35
                L10_2 = Config
                L10_2 = L10_2.collisionDamageAmount
                L9_2 = L9_2 * L10_2
                L9_2 = L9_2 * L8_2
                L10_2 = GetEntityCoords
                L11_2 = L3_2
                L10_2 = L10_2(L11_2)
                L11_2 = GetOffsetFromEntityGivenWorldCoords
                L12_2 = L3_2
                L13_2 = L7_2.x
                L14_2 = L10_2.x
                L13_2 = L13_2 + L14_2
                L14_2 = L7_2.y
                L15_2 = L10_2.y
                L14_2 = L14_2 + L15_2
                L15_2 = L7_2.z
                L16_2 = L10_2.z
                L15_2 = L15_2 + L16_2
                L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
                L12_2 = GetModelDimensions
                L13_2 = GetEntityModel
                L14_2 = L3_2
                L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L13_2(L14_2)
                L12_2, L13_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                L14_2 = vector3
                L15_2 = L13_2.x
                L16_2 = L12_2.x
                L15_2 = L15_2 - L16_2
                L16_2 = L13_2.y
                L17_2 = L12_2.y
                L16_2 = L16_2 - L17_2
                L17_2 = L13_2.z
                L18_2 = L12_2.z
                L17_2 = L17_2 - L18_2
                L14_2 = L14_2(L15_2, L16_2, L17_2)
                L15_2 = vector3
                L16_2 = L11_2.x
                L17_2 = L14_2.x
                L17_2 = L17_2 / 2
                L16_2 = L16_2 * L17_2
                L17_2 = L11_2.y
                L18_2 = L14_2.y
                L18_2 = L18_2 / 2
                L17_2 = L17_2 * L18_2
                L18_2 = L11_2.z
                L19_2 = L14_2.z
                L19_2 = L19_2 / 2
                L18_2 = L18_2 * L19_2
                L15_2 = L15_2(L16_2, L17_2, L18_2)
                L11_2 = L15_2
                L0_2 = L5_2
                L15_2 = pairs
                L16_2 = L7_1
                L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
                for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
                  L21_2 = GetVehicleNumberOfWheels
                  L22_2 = L3_2
                  L21_2 = L21_2(L22_2)
                  L21_2 = L21_2 - 1
                  if L20_2 <= L21_2 then
                    L21_2 = GetWorldPositionOfEntityBone
                    L22_2 = L3_2
                    L23_2 = GetEntityBoneIndexByName
                    L24_2 = L3_2
                    L25_2 = L19_2
                    L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L23_2(L24_2, L25_2)
                    L21_2 = L21_2(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
                    L22_2 = GetOffsetFromEntityGivenWorldCoords
                    L23_2 = L3_2
                    L24_2 = L21_2
                    L22_2 = L22_2(L23_2, L24_2)
                    L23_2 = GetDistanceBetweenCoords
                    L24_2 = L22_2
                    L25_2 = L11_2
                    L26_2 = 1
                    L23_2 = L23_2(L24_2, L25_2, L26_2)
                    L24_2 = 1.5
                    if L23_2 < L24_2 then
                      L24_2 = ApplyWheelDamage
                      L25_2 = L3_2
                      L26_2 = L20_2
                      L27_2 = L23_2 / 1.1
                      L27_2 = L9_2 * L27_2
                      L28_2 = L19_2
                      L24_2(L25_2, L26_2, L27_2, L28_2)
                      L9_2 = L9_2 * 0.7
                      L24_2 = Citizen
                      L24_2 = L24_2.Wait
                      L25_2 = 250
                      L24_2(L25_2)
                    end
                  end
                end
              end
            end
          end
        end
    end
    elseif nil ~= L0_2 then
      L0_2 = nil
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = L1_2
    L3_2(L4_2)
  end
end
L9_1(L10_1)
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = GetVehicleNumberOfWheels
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 - 1
  if A1_2 > L4_2 then
    return
  end
  L4_2 = Debug
  L5_2 = "damage"
  L6_2 = A2_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = GetVehicleWheelHealth
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2 - A2_2
  if L5_2 <= 1 then
    L5_2 = GetVehicleWheelFlags
    L6_2 = A0_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if 63487 ~= L5_2 then
      L5_2 = GetVehicleNumberOfWheels
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      if 4 == L5_2 then
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 1
        L7_2 = 100
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = Config
        L6_2 = L6_2.fallOffChance
        if L5_2 < L6_2 then
          L5_2 = DropWheel
          L6_2 = A0_2
          L7_2 = A1_2
          L8_2 = A3_2
          L5_2(L6_2, L7_2, L8_2)
      end
      else
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 1
        L7_2 = 100
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = Config
        L6_2 = L6_2.tireBurstChance
        if L5_2 < L6_2 then
          L5_2 = IsVehicleTyreBurst
          L6_2 = A0_2
          L7_2 = A1_2
          L8_2 = 0
          L5_2 = L5_2(L6_2, L7_2, L8_2)
          if not L5_2 then
            L5_2 = Config
            L5_2 = L5_2.respectBulletproofTires
            if L5_2 then
              L5_2 = GetVehicleTyresCanBurst
              L6_2 = A0_2
              L5_2 = L5_2(L6_2)
              if not L5_2 then
                goto lbl_79
              end
            end
            L5_2 = SetVehicleTyreBurst
            L6_2 = A0_2
            L7_2 = A1_2
            L8_2 = 1
            L9_2 = 1
            L5_2(L6_2, L7_2, L8_2, L9_2)
          end
        end
        ::lbl_79::
        L5_2 = SetVehicleWheelHealth
        L6_2 = A0_2
        L7_2 = A1_2
        L8_2 = 250.0
        L5_2(L6_2, L7_2, L8_2)
      end
  end
  else
    L5_2 = SetVehicleWheelHealth
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = L4_2 - A2_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = DebugDamage
  L6_2 = A0_2
  L7_2 = A3_2
  L8_2 = A2_2
  L5_2(L6_2, L7_2, L8_2)
end
ApplyWheelDamage = L9_1
L9_1 = {}
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = Config
  L3_2 = L3_2.debug
  if L3_2 then
    L3_2 = Citizen
    L3_2 = L3_2.CreateThread
    function L4_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
      L0_3 = 500
      L2_3 = A1_2
      L1_3 = L9_1
      L1_3 = L1_3[L2_3]
      if not L1_3 then
        L2_3 = A1_2
        L1_3 = L9_1
        L1_3[L2_3] = 0
      end
      L2_3 = A1_2
      L1_3 = L9_1
      L4_3 = A1_2
      L3_3 = L9_1
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3 + 1
      L1_3[L2_3] = L3_3
      L2_3 = A1_2
      L1_3 = L9_1
      L1_3 = L1_3[L2_3]
      while L0_3 > 0 do
        L2_3 = GetWorldPositionOfEntityBone
        L3_3 = A0_2
        L4_3 = GetEntityBoneIndexByName
        L5_3 = A0_2
        L6_3 = A1_2
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3(L5_3, L6_3)
        L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L3_3 = Draw3DText
        L4_3 = L2_3.x
        L5_3 = L2_3.y
        L6_3 = L2_3.z
        L7_3 = 0.12 * L1_3
        L6_3 = L6_3 + L7_3
        L7_3 = "~r~-"
        L8_3 = A2_2
        L7_3 = L7_3 .. L8_3
        L8_3 = 4
        L9_3 = 0.06
        L10_3 = 0.06
        L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L0_3 = L0_3 - 1
        L3_3 = Citizen
        L3_3 = L3_3.Wait
        L4_3 = 1
        L3_3(L4_3)
      end
      L3_3 = A1_2
      L2_3 = L9_1
      L5_3 = A1_2
      L4_3 = L9_1
      L4_3 = L4_3[L5_3]
      L4_3 = L4_3 - 1
      L2_3[L3_3] = L4_3
    end
    L3_2(L4_2)
  end
end
DebugDamage = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L4_1
  L3_2 = L3_2[A1_2]
  if L3_2 then
    return
  end
  L3_2 = SetCooldown
  L4_2 = A1_2
  L5_2 = 500
  L3_2(L4_2, L5_2)
  L3_2 = Citizen
  L3_2 = L3_2.CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_2
    L0_3 = L6_1
    L0_3 = L0_3[L1_3]
    if not L0_3 then
      L1_3 = A0_2
      L0_3 = L6_1
      L2_3 = {}
      L0_3[L1_3] = L2_3
    end
    L1_3 = A0_2
    L0_3 = L6_1
    L0_3 = L0_3[L1_3]
    L1_3 = A1_2
    L2_3 = GetVehicleWheelFlags
    L3_3 = A0_2
    L4_3 = A1_2
    L2_3 = L2_3(L3_3, L4_3)
    L0_3[L1_3] = L2_3
    L0_3 = L1_1
    L1_3 = IsVehicleTyreBurst
    L2_3 = A0_2
    L3_3 = A1_2
    L4_3 = 0
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if L1_3 then
      L0_3 = L2_1
    end
    L1_3 = DoRequestModel
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = GetWorldPositionOfEntityBone
    L2_3 = A0_2
    L3_3 = GetEntityBoneIndexByName
    L4_3 = A0_2
    L5_3 = A2_2
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L3_3(L4_3, L5_3)
    L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L2_3 = GetEntityVelocity
    L3_3 = A0_2
    L2_3 = L2_3(L3_3)
    L3_3 = CreateObjectNoOffset
    L4_3 = L0_3
    L5_3 = L1_3.x
    L6_3 = L1_3.y
    L7_3 = -10.0
    L8_3 = 1
    L9_3 = 0
    L10_3 = 0
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L4_3 = Citizen
    L4_3 = L4_3.CreateThread
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4
      L0_4 = 150
      while L0_4 > 0 do
        L0_4 = L0_4 - 1
        L1_4 = SetEntityNoCollisionEntity
        L2_4 = L3_3
        L3_4 = A0_2
        L4_4 = true
        L1_4(L2_4, L3_4, L4_4)
        L1_4 = Citizen
        L1_4 = L1_4.Wait
        L2_4 = 1
        L1_4(L2_4)
      end
    end
    L4_3(L5_3)
    L4_3 = SetEntityCoords
    L5_3 = L3_3
    L6_3 = L1_3
    L7_3 = false
    L8_3 = false
    L9_3 = false
    L10_3 = false
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L4_3 = SetEntityHeading
    L5_3 = L3_3
    L6_3 = GetEntityHeading
    L7_3 = A0_2
    L6_3 = L6_3(L7_3)
    L6_3 = L6_3 + 270.0
    L4_3(L5_3, L6_3)
    L4_3 = SetEntityDynamic
    L5_3 = L3_3
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = SetEntityVelocity
    L5_3 = L3_3
    L6_3 = L2_3.x
    L6_3 = L6_3 * 1.5
    L7_3 = math
    L7_3 = L7_3.random
    L8_3 = -2
    L9_3 = 2
    L7_3 = L7_3(L8_3, L9_3)
    L6_3 = L6_3 + L7_3
    L7_3 = L2_3.y
    L7_3 = L7_3 * 1.5
    L8_3 = math
    L8_3 = L8_3.random
    L9_3 = -2
    L10_3 = 2
    L8_3 = L8_3(L9_3, L10_3)
    L7_3 = L7_3 + L8_3
    L8_3 = L2_3.z
    L8_3 = L8_3 * 1.25
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = SetVehicleWheelHealth
    L5_3 = A0_2
    L6_3 = A1_2
    L7_3 = 0.0
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = SetEntityAsMissionEntity
    L5_3 = L3_3
    L6_3 = 0
    L7_3 = 0
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = SetEntityAsNoLongerNeeded
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = MarkObjectForDeletion
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = table
    L4_3 = L4_3.insert
    L5_3 = L5_1
    L6_3 = A0_2
    L4_3(L5_3, L6_3)
    L4_3 = Entity
    L5_3 = A0_2
    L4_3 = L4_3(L5_3)
    L4_3 = L4_3.state
    L5_3 = L4_3
    L4_3 = L4_3.set
    L6_3 = "kq_wheeldamage_broken"
    L7_3 = true
    L8_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = Entity
    L5_3 = A0_2
    L4_3 = L4_3(L5_3)
    L4_3 = L4_3.state
    L5_3 = L4_3
    L4_3 = L4_3.set
    L6_3 = "kq_wheeldamage_broken_"
    L7_3 = A1_2
    L6_3 = L6_3 .. L7_3
    L7_3 = true
    L8_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = TriggerServerEvent
    L5_3 = "kq_wheeldamage:setState"
    L6_3 = NetworkGetNetworkIdFromEntity
    L7_3 = A0_2
    L6_3 = L6_3(L7_3)
    L7_3 = true
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = TriggerServerEvent
    L5_3 = "kq_wheeldamage:setBroken"
    L6_3 = NetworkGetNetworkIdFromEntity
    L7_3 = A0_2
    L6_3 = L6_3(L7_3)
    L7_3 = A1_2
    L8_3 = true
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  L3_2(L4_2)
end
DropWheel = L10_1
L10_1 = Citizen
L10_1 = L10_1.CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = 3000
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = {}
    L3_2 = pairs
    L4_2 = GetGamePool
    L5_2 = "CVehicle"
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = Entity
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.state
      L9_2 = L9_2.kq_wheeldamage_broken
      if L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
    L3_2 = IsPedInAnyVehicle
    L4_2 = L1_2
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = GetVehiclePedIsIn
      L4_2 = L1_2
      L5_2 = false
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L2_2
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
    L5_1 = L2_2
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = L0_2
    L3_2(L4_2)
  end
end
L10_1(L11_1)
L10_1 = Citizen
L10_1 = L10_1.CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = 300
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = false
    L3_2 = pairs
    L4_2 = L5_1
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = DoesEntityExist
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = 0
        L10_2 = 0
        L11_2 = pairs
        L12_2 = L7_1
        L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
        for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
          L17_2 = GetVehicleNumberOfWheels
          L18_2 = L8_2
          L17_2 = L17_2(L18_2)
          L17_2 = L17_2 - 1
          if L16_2 <= L17_2 then
            L17_2 = GetVehicleWheelHealth
            L18_2 = L8_2
            L19_2 = L16_2
            L17_2 = L17_2(L18_2, L19_2)
            if not (L17_2 <= 1.0) then
              L17_2 = Entity
              L18_2 = L8_2
              L17_2 = L17_2(L18_2)
              L17_2 = L17_2.state
              L18_2 = "kq_wheeldamage_broken_"
              L19_2 = L16_2
              L18_2 = L18_2 .. L19_2
              L17_2 = L17_2[L18_2]
              if not L17_2 then
                goto lbl_68
              end
              L17_2 = GetVehicleBodyHealth
              L18_2 = L8_2
              L17_2 = L17_2(L18_2)
              L18_2 = 1000.0
              if not (L17_2 < L18_2) then
                L17_2 = GetVehicleEngineHealth
                L18_2 = L8_2
                L17_2 = L17_2(L18_2)
                L18_2 = 1000.0
                if not (L17_2 < L18_2) then
                  goto lbl_68
                end
              end
            end
            L9_2 = L9_2 + 1
            L17_2 = SetVehicleWheelFlags
            L18_2 = L8_2
            L19_2 = L16_2
            L20_2 = -1
            L17_2(L18_2, L19_2, L20_2)
            L17_2 = SetVehicleWheelXOffset
            L18_2 = L8_2
            L19_2 = L16_2
            L20_2 = -9999.9
            L17_2(L18_2, L19_2, L20_2)
            goto lbl_145
            ::lbl_68::
            L17_2 = GetVehicleWheelHealth
            L18_2 = L8_2
            L19_2 = L16_2
            L17_2 = L17_2(L18_2, L19_2)
            L18_2 = 300.0
            if L17_2 <= L18_2 then
              L10_2 = L10_2 + 1
            end
            L17_2 = GetVehicleWheelFlags
            L18_2 = L8_2
            L19_2 = L16_2
            L17_2 = L17_2(L18_2, L19_2)
            if 63487 == L17_2 then
              L17_2 = Entity
              L18_2 = L8_2
              L17_2 = L17_2(L18_2)
              L17_2 = L17_2.state
              L18_2 = L17_2
              L17_2 = L17_2.set
              L19_2 = "kq_wheeldamage_broken_"
              L20_2 = L16_2
              L19_2 = L19_2 .. L20_2
              L20_2 = false
              L21_2 = true
              L17_2(L18_2, L19_2, L20_2, L21_2)
              L17_2 = TriggerServerEvent
              L18_2 = "kq_wheeldamage:setBroken"
              L19_2 = NetworkGetNetworkIdFromEntity
              L20_2 = L8_2
              L19_2 = L19_2(L20_2)
              L20_2 = L16_2
              L21_2 = false
              L17_2(L18_2, L19_2, L20_2, L21_2)
              L17_2 = L6_1
              L17_2 = L17_2[L8_2]
              if L17_2 then
                L17_2 = L6_1
                L17_2 = L17_2[L8_2]
                L17_2 = L17_2[L16_2]
                if L17_2 then
                  L17_2 = SetVehicleWheelFlags
                  L18_2 = L8_2
                  L19_2 = L16_2
                  L20_2 = L6_1
                  L20_2 = L20_2[L8_2]
                  L20_2 = L20_2[L16_2]
                  L17_2(L18_2, L19_2, L20_2)
              end
              else
                L17_2 = SetVehicleWheelFlags
                L18_2 = L8_2
                L19_2 = L16_2
                L20_2 = L8_1
                L20_2 = L20_2[L16_2]
                L17_2(L18_2, L19_2, L20_2)
              end
              L17_2 = Config
              L17_2 = L17_2.setVehicleUndriveable
              if L17_2 then
                L17_2 = SetVehicleUndriveable
                L18_2 = L8_2
                L19_2 = false
                L17_2(L18_2, L19_2)
              end
              L17_2 = Config
              L17_2 = L17_2.limitVehicleSpeed
              if L17_2 then
                L17_2 = SetVehicleMaxSpeed
                L18_2 = L8_2
                L19_2 = 0.0
                L17_2(L18_2, L19_2)
              end
              L17_2 = Citizen
              L17_2 = L17_2.Wait
              L18_2 = 1
              L17_2(L18_2)
            end
          end
          ::lbl_145::
        end
        if L10_2 > 0 then
          L0_2 = 150
        end
        if L9_2 > 0 then
          L11_2 = GetDistanceBetweenCoords
          L12_2 = GetEntityCoords
          L13_2 = L1_2
          L12_2 = L12_2(L13_2)
          L13_2 = GetEntityCoords
          L14_2 = L8_2
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L13_2(L14_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          L12_2 = GetPedInVehicleSeat
          L13_2 = L8_2
          L14_2 = -1
          L12_2 = L12_2(L13_2, L14_2)
          if 0 == L12_2 or not (L11_2 < 50) then
            L12_2 = IsPedInAnyVehicle
            L13_2 = L1_2
            L14_2 = true
            L12_2 = L12_2(L13_2, L14_2)
            if L12_2 then
              L12_2 = GetVehiclePedIsIn
              L13_2 = L1_2
              L12_2 = L12_2(L13_2)
            end
            if not (L12_2 == L8_2 or L11_2 < 10) then
              goto lbl_183
            end
          end
          L2_2 = true
          ::lbl_183::
          L12_2 = Config
          L12_2 = L12_2.setVehicleUndriveable
          if L12_2 then
            L12_2 = SetVehicleUndriveable
            L13_2 = L8_2
            L14_2 = true
            L12_2(L13_2, L14_2)
          else
            L12_2 = Config
            L12_2 = L12_2.limitVehicleSpeed
            if L12_2 then
              L12_2 = GetEntitySpeed
              L13_2 = L8_2
              L12_2 = L12_2(L13_2)
              L13_2 = L12_2 * 3.6
              L14_2 = Config
              L14_2 = L14_2.speedLimit
              L14_2 = L14_2 + 1
              if L13_2 > L14_2 then
                L13_2 = SetVehicleCheatPowerIncrease
                L14_2 = L8_2
                L15_2 = 0.0
                L13_2(L14_2, L15_2)
              else
                L13_2 = SetVehicleMaxSpeed
                L14_2 = L8_2
                L15_2 = Config
                L15_2 = L15_2.speedLimit
                L15_2 = L15_2 / 3.6
                L13_2(L14_2, L15_2)
              end
            end
          end
        else
          L11_2 = Entity
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          L11_2 = L11_2.state
          L11_2 = L11_2.kq_wheeldamage_broken
          if L11_2 then
            L11_2 = TriggerServerEvent
            L12_2 = "kq_wheeldamage:setState"
            L13_2 = NetworkGetNetworkIdFromEntity
            L14_2 = L8_2
            L13_2 = L13_2(L14_2)
            L14_2 = false
            L11_2(L12_2, L13_2, L14_2)
            L11_2 = Entity
            L12_2 = L8_2
            L11_2 = L11_2(L12_2)
            L11_2 = L11_2.state
            L12_2 = L11_2
            L11_2 = L11_2.set
            L13_2 = "kq_wheeldamage_broken"
            L14_2 = false
            L15_2 = true
            L11_2(L12_2, L13_2, L14_2, L15_2)
          end
        end
      end
    end
    if L2_2 then
      L0_2 = 1
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = L0_2
    L3_2(L4_2)
  end
end
L10_1(L11_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L4_1
  L2_2[A0_2] = true
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Citizen
    L0_3 = L0_3.Wait
    L1_3 = A1_2
    if not L1_3 then
      L1_3 = 500
    end
    L0_3(L1_3)
    L1_3 = A0_2
    L0_3 = L4_1
    L0_3[L1_3] = false
  end
  L2_2(L3_2)
end
SetCooldown = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = L3_1
  L1_2 = L1_2[A0_2]
  if nil ~= L1_2 then
    L1_2 = L3_1
    L1_2 = L1_2[A0_2]
    return L1_2
  else
    L1_2 = IsBlacklisted
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L3_1
    L2_2[A0_2] = L1_2
    return L1_2
  end
end
IsBlacklistedFromCache = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L7_2 == A1_2 then
      L8_2 = true
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
Contains = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetHashKey
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = HasModelLoaded
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = RequestModel
  L3_2 = L1_2
  L2_2(L3_2)
  while true do
    L2_2 = HasModelLoaded
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 100
    L2_2(L3_2)
  end
end
DoRequestModel = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetEntityModel
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    L9_2 = GetHashKey
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      L8_2 = L7_2 + 0.001
      return L8_2
    end
  end
  L2_2 = 0
  return L2_2
end
ContainsModel = L10_1
function L10_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.debug
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L3_2 = ...
    L1_2(L2_2, L3_2)
  end
end
Debug = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = GetGameplayCamCoords
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L8_2()
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2 = GetDistanceBetweenCoords
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = L9_2
  L14_2 = A0_2
  L15_2 = A1_2
  L16_2 = A2_2
  L17_2 = true
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L11_2 = 1
  L11_2 = L11_2 / L10_2
  L11_2 = L11_2 * 20
  L12_2 = GetGameplayCamFov
  L12_2 = L12_2()
  L13_2 = 1
  L12_2 = L13_2 / L12_2
  L12_2 = L12_2 * 100
  L13_2 = L11_2 * L12_2
  L14_2 = SetTextScale
  L15_2 = A5_2 * L13_2
  L16_2 = A6_2 * L13_2
  L14_2(L15_2, L16_2)
  L14_2 = SetTextFont
  L15_2 = A4_2
  L14_2(L15_2)
  L14_2 = SetTextProportional
  L15_2 = 1
  L14_2(L15_2)
  L14_2 = SetTextDropshadow
  L15_2 = 1
  L16_2 = 1
  L17_2 = 1
  L18_2 = 1
  L19_2 = 255
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L14_2 = SetTextEdge
  L15_2 = 2
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  L19_2 = 150
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L14_2 = SetTextDropShadow
  L14_2()
  L14_2 = SetTextOutline
  L14_2()
  L14_2 = SetTextEntry
  L15_2 = "STRING"
  L14_2(L15_2)
  L14_2 = SetTextCentre
  L15_2 = 1
  L14_2(L15_2)
  L14_2 = AddTextComponentString
  L15_2 = A3_2
  L14_2(L15_2)
  L14_2 = SetDrawOrigin
  L15_2 = A0_2
  L16_2 = A1_2
  L17_2 = A2_2
  L18_2 = 0
  L14_2(L15_2, L16_2, L17_2, L18_2)
  L14_2 = DrawText
  L15_2 = 0.0
  L16_2 = 0.0
  L14_2(L15_2, L16_2)
  L14_2 = ClearDrawOrigin
  L14_2()
end
Draw3DText = L10_1
