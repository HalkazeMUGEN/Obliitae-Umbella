[StateDef 0]
type = U
movetype = U
physics = U
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1

[State ]
type = SelfState
trigger1 = !(name="Obliitae Umbella") || !(authorname="Halkaze")
value = 5030
persistent = 256
ignorehitpause = 1

[State ]
type = CtrlSet
trigger1 = 1
value = !!(roundstate=3)
ignorehitpause = 1

[State ]
type = StateTypeSet
trigger1 = 1
statetype = S
movetype = I
physics = S
ignorehitpause = 1

[State ]
type = StateTypeSet
trigger1 = vel y < 0 || pos y < 0
statetype = A
physics = A
ignorehitpause = 1

[State ];超即死当身展開
type = ReversalDef
trigger1 = !enemynear(!enemynear,alive&&numenemy>1),life && enemynear(!enemynear,alive&&numenemy>1),alive
reversal.attr = SCA,AA,AT,AP
pausetime = 0,2
hitsound = -1
p2stateno = 502
ignorehitpause = 1

[State ]
type = SelfState
trigger1 = ((var(10)&126)/2) > numhelper(99)
value = 99
persistent = 256
ignorehitpause = 1

[StateDef 99]
type = U
movetype = U
physics = U
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1

[State ]
type = Helper
trigger1 = var(59) := numhelper(99) || 1
name = "Tsukumo"
ID = 99
size.height = 900 + random%5
stateno = 999
helpertype = player
keyctrl = 0
pausemovetime = 2147483647
supermovetime = 2147483647
ignorehitpause = 1

[State ]
type = SelfState
trigger1 = var(59) != numhelper(99)
trigger1 = ((var(10)&126)/2) > numhelper(99)
value = 99
persistent = 256
ignorehitpause = 1

[StateDef 999]
type = U
movetype = U
physics = U
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1

[State ]
type = ChangeState
trigger1 = !ishelper
value = 0
persistent = 256
ignorehitpause = 1

[State ]
type = StateTypeSet
trigger1 = 1
statetype = S
movetype = I
physics = S
ignorehitpause = 1

[State ]
type = ChangeAnim
trigger1 = vel x = 0
trigger1 = anim != const(size.height)
value = const(size.height)
ignorehitpause = 1

[State ]
type = ChangeAnim
trigger1 = root,command = "holdfwd" ^^ root,command = "holdback"
trigger1 = anim != const(size.height) + 10
value = const(size.height) + 10
ignorehitpause = 1

[State ]
type = VelSet
trigger1 = 1
x = 0
ignorehitpause = 1

[State ]
type = VelSet
trigger1 = root,command = "holdfwd" ^^ root,command = "holdback"
x = ifelse(root,command="holdfwd",const(velocity.walk.fwd.x),const(velocity.walk.back.x))
ignorehitpause = 1

[State ]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State ]
type = DestroySelf
trigger1 = numhelper(99) > 1
trigger1 = ((root,var(10)&126)/2) < numhelper(99)
ignorehitpause = 1

[State ]
type = VarSet
trigger1 = 1
sysvar(1) = 99
ignorehitpause = 1

[State ]
type = SelfState
trigger1 = 1
value = 5150
ignorehitpause = 1

[StateDef 500]
type = U
movetype = U
physics = U
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1

[State ]
type = ChangeState
trigger1 = hitpausetime
value = 502
persistent = 256
ignorehitpause = 1

[State ]
type = StateTypeSet
trigger1 = 1
movetype = A
ignorehitpause = 1

[State ]
type = ChangeAnim2
trigger1 = 1
value = 500
ignorehitpause = 1

[State ]
type = HitDef
trigger1 = !hitpausetime
attr = ,NA
pausetime = 3, 0
hitflag = MAFD
priority = 7,H
guard.dist = 0
numhits = 0
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
ignorehitpause = 1

[StateDef 501]
type = U
movetype = U
physics = U
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1

[State 1]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 2]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 3]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 4]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 5]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 6]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 7]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 8]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 9]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 10]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 11]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 12]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 13]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 14]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 15]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 16]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 17]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 18]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 19]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 20]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 21]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 22]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 23]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 24]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 25]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 26]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 27]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 28]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 29]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 30]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 31]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 32]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 33]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 34]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 35]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 36]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 37]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 38]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 39]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 40]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 41]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 42]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 43]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 44]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 45]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 46]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 47]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 48]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 49]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 50]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 51]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 52]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 53]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 54]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 55]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 56]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 57]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 58]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 59]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 60]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 61]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 62]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 63]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 64]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 65]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 66]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 67]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 68]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 69]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 70]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 71]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 72]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 73]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 74]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 75]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 76]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 77]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 78]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 79]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 80]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 81]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 82]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 83]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 84]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 85]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 86]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 87]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 88]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 89]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 90]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 91]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 92]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 93]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 94]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 95]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 96]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 97]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 98]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 99]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 100]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 101]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 102]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 103]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 104]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 105]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 106]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 107]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 108]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 109]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 110]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 111]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 112]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 113]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 114]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 115]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 116]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 117]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 118]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 119]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 120]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 121]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 122]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 123]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 124]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 125]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 126]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 127]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 128]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 129]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 130]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 131]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 132]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 133]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 134]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 135]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 136]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 137]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 138]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 139]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 140]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 141]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 142]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 143]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 144]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 145]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 146]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 147]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 148]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 149]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 150]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 151]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 152]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 153]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 154]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 155]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 156]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 157]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 158]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 159]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 160]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 161]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 162]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 163]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 164]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 165]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 166]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 167]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 168]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 169]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 170]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 171]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 172]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 173]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 174]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 175]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 176]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 177]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 178]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 179]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 180]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 181]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 182]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 183]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 184]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 185]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 186]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 187]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 188]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 189]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 190]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 191]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 192]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 193]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 194]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 195]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 196]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 197]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 198]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 199]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 200]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 201]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 202]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 203]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 204]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 205]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 206]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 207]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 208]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 209]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 210]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 211]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 212]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 213]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 214]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 215]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 216]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 217]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 218]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 219]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 220]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 221]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 222]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 223]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 224]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 225]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 226]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 227]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 228]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 229]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 230]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 231]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 232]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 233]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 234]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 235]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 236]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 237]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 238]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 239]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 240]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 241]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 242]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 243]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 244]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 245]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 246]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 247]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 248]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 249]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 250]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 251]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 252]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 253]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 254]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 255]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 256]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 257]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 258]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 259]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 260]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 261]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 262]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 263]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 264]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 265]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 266]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 267]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 268]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 269]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 270]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 271]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 272]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 273]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 274]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 275]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 276]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 277]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 278]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 279]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 280]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 281]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 282]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 283]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 284]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 285]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 286]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 287]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 288]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 289]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 290]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 291]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 292]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 293]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 294]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 295]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 296]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 297]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 298]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 299]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 300]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 301]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 302]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 303]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 304]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 305]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 306]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 307]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 308]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 309]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 310]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 311]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 312]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 313]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 314]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 315]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 316]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 317]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 318]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 319]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 320]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 321]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 322]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 323]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 324]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 325]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 326]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 327]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 328]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 329]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 330]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 331]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 332]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 333]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 334]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 335]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 336]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 337]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 338]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 339]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 340]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 341]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 342]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 343]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 344]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 345]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 346]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 347]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 348]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 349]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 350]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 351]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 352]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 353]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 354]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 355]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 356]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 357]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 358]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 359]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 360]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 361]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 362]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 363]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 364]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 365]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 366]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 367]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 368]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 369]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 370]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 371]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 372]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 373]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 374]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 375]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 376]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 377]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 378]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 379]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 380]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 381]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 382]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 383]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 384]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 385]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 386]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 387]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 388]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 389]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 390]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 391]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 392]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 393]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 394]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 395]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 396]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 397]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 398]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 399]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 400]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 401]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 402]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 403]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 404]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 405]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 406]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 407]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 408]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 409]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 410]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 411]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 412]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 413]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 414]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 415]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 416]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 417]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 418]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 419]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 420]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 421]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 422]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 423]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 424]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 425]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 426]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 427]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 428]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 429]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 430]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 431]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 432]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 433]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 434]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 435]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 436]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 437]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 438]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 439]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 440]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 441]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 442]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 443]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 444]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 445]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 446]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 447]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 448]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 449]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 450]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 451]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 452]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 453]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 454]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 455]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 456]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 457]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 458]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 459]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 460]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 461]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 462]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 463]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 464]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 465]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 466]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 467]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 468]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 469]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 470]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 471]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 472]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 473]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 474]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 475]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 476]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 477]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 478]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 479]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 480]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 481]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 482]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 483]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 484]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 485]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 486]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 487]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 488]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 489]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 490]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 491]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 492]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 493]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 494]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 495]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 496]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 497]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 498]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 499]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 500]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 501]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 502]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 503]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 504]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 505]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 506]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 507]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 508]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 509]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 510]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 511]
type=Null
trigger1=1
persistent=2
ignorehitpause=1
[State 512]
type=ChangeState
trigger1=1
value=500+2*!!hitpausetime
persistent=1
ignorehitpause=1

[StateDef 502]
type = U
movetype = U
physics = U
hitdefpersist = 1
movehitpersist = 1
hitcountpersist = 1

[State 1]
type=SelfState
trigger1=name="Obliitae Umbella"
value=0
ctrl=0
ignorehitpause=1
[State 2]
type=DestroySelf
trigger1=ishelper
ignorehitpause=1
[State 3]
type=Null
trigger1=0
[State 4]
type=Null
trigger1=0
[State 5]
type=Null
trigger1=0
[State 6]
type=Null
trigger1=0
[State 7]
type=Null
trigger1=0
[State 8]
type=Null
trigger1=0
[State 9]
type=Null
trigger1=0
[State 10]
type=Null
trigger1=0
[State 11]
type=Null
trigger1=0
[State 12]
type=Null
trigger1=0
[State 13]
type=Null
trigger1=0
[State 14]
type=Null
trigger1=0
[State 15]
type=Null
trigger1=0
[State 16]
type=Null
trigger1=0
[State 17]
type=Null
trigger1=0
[State 18]
type=Null
trigger1=0
[State 19]
type=Null
trigger1=0
[State 20]
type=Null
trigger1=0
[State 21]
type=Null
trigger1=0
[State 22]
type=Null
trigger1=0
[State 23]
type=Null
trigger1=0
[State 24]
type=Null
trigger1=0
[State 25]
type=Null
trigger1=0
[State 26]
type=Null
trigger1=0
[State 27]
type=Null
trigger1=0
[State 28]
type=Null
trigger1=0
[State 29]
type=Null
trigger1=0
[State 30]
type=Null
trigger1=0
[State 31]
type=Null
trigger1=0
[State 32]
type=Null
trigger1=0
[State 33]
type=Null
trigger1=0
[State 34]
type=Null
trigger1=0
[State 35]
type=Null
trigger1=0
[State 36]
type=Null
trigger1=0
[State 37]
type=Null
trigger1=0
[State 38]
type=Null
trigger1=0
[State 39]
type=Null
trigger1=0
[State 40]
type=Null
trigger1=0
[State 41]
type=Null
trigger1=0
[State 42]
type=Null
trigger1=0
[State 43]
type=Null
trigger1=0
[State 44]
type=Null
trigger1=0
[State 45]
type=Null
trigger1=0
[State 46]
type=Null
trigger1=0
[State 47]
type=Null
trigger1=0
[State 48]
type=Null
trigger1=0
[State 49]
type=Null
trigger1=0
[State 50]
type=Null
trigger1=0
[State 51]
type=Null
trigger1=0
[State 52]
type=Null
trigger1=0
[State 53]
type=Null
trigger1=0
[State 54]
type=Null
trigger1=0
[State 55]
type=Null
trigger1=0
[State 56]
type=Null
trigger1=0
[State 57]
type=Null
trigger1=0
[State 58]
type=Null
trigger1=0
[State 59]
type=Null
trigger1=0
[State 60]
type=Null
trigger1=0
[State 61]
type=Null
trigger1=0
[State 62]
type=Null
trigger1=0
[State 63]
type=Null
trigger1=0
[State 64]
type=Null
trigger1=0
[State 65]
type=Null
trigger1=0
[State 66]
type=Null
trigger1=0
[State 67]
type=Null
trigger1=0
[State 68]
type=Null
trigger1=0
[State 69]
type=Null
trigger1=0
[State 70]
type=Null
trigger1=0
[State 71]
type=Null
trigger1=0
[State 72]
type=Null
trigger1=0
[State 73]
type=Null
trigger1=0
[State 74]
type=Null
trigger1=0
[State 75]
type=Null
trigger1=0
[State 76]
type=Null
trigger1=0
[State 77]
type=Null
trigger1=0
[State 78]
type=Null
trigger1=0
[State 79]
type=Null
trigger1=0
[State 80]
type=Null
trigger1=0
[State 81]
type=Null
trigger1=0
[State 82]
type=Null
trigger1=0
[State 83]
type=Null
trigger1=0
[State 84]
type=Null
trigger1=0
[State 85]
type=Null
trigger1=0
[State 86]
type=Null
trigger1=0
[State 87]
type=Null
trigger1=0
[State 88]
type=Null
trigger1=0
[State 89]
type=Null
trigger1=0
[State 90]
type=Null
trigger1=0
[State 91]
type=Null
trigger1=0
[State 92]
type=Null
trigger1=0
[State 93]
type=Null
trigger1=0
[State 94]
type=Null
trigger1=0
[State 95]
type=Null
trigger1=0
[State 96]
type=Null
trigger1=0
[State 97]
type=Null
trigger1=0
[State 98]
type=Null
trigger1=0
[State 99]
type=Null
trigger1=0
[State 100]
type=Null
trigger1=0
[State 101]
type=Null
trigger1=0
[State 102]
type=Null
trigger1=0
[State 103]
type=Null
trigger1=0
[State 104]
type=Null
trigger1=0
[State 105]
type=Null
trigger1=0
[State 106]
type=Null
trigger1=0
[State 107]
type=Null
trigger1=0
[State 108]
type=Null
trigger1=0
[State 109]
type=Null
trigger1=0
[State 110]
type=Null
trigger1=0
[State 111]
type=Null
trigger1=0
[State 112]
type=Null
trigger1=0
[State 113]
type=Null
trigger1=0
[State 114]
type=Null
trigger1=0
[State 115]
type=Null
trigger1=0
[State 116]
type=Null
trigger1=0
[State 117]
type=Null
trigger1=0
[State 118]
type=Null
trigger1=0
[State 119]
type=Null
trigger1=0
[State 120]
type=Null
trigger1=0
[State 121]
type=Null
trigger1=0
[State 122]
type=Null
trigger1=0
[State 123]
type=Null
trigger1=0
[State 124]
type=Null
trigger1=0
[State 125]
type=Null
trigger1=0
[State 126]
type=Null
trigger1=0
[State 127]
type=Null
trigger1=0
[State 128]
type=Null
trigger1=0
[State 129]
type=Null
trigger1=0
[State 130]
type=Null
trigger1=0
[State 131]
type=Null
trigger1=0
[State 132]
type=Null
trigger1=0
[State 133]
type=Null
trigger1=0
[State 134]
type=Null
trigger1=0
[State 135]
type=Null
trigger1=0
[State 136]
type=Null
trigger1=0
[State 137]
type=Null
trigger1=0
[State 138]
type=Null
trigger1=0
[State 139]
type=Null
trigger1=0
[State 140]
type=Null
trigger1=0
[State 141]
type=Null
trigger1=0
[State 142]
type=Null
trigger1=0
[State 143]
type=Null
trigger1=0
[State 144]
type=Null
trigger1=0
[State 145]
type=Null
trigger1=0
[State 146]
type=Null
trigger1=0
[State 147]
type=Null
trigger1=0
[State 148]
type=Null
trigger1=0
[State 149]
type=Null
trigger1=0
[State 150]
type=Null
trigger1=0
[State 151]
type=Null
trigger1=0
[State 152]
type=Null
trigger1=0
[State 153]
type=Null
trigger1=0
[State 154]
type=Null
trigger1=0
[State 155]
type=Null
trigger1=0
[State 156]
type=Null
trigger1=0
[State 157]
type=Null
trigger1=0
[State 158]
type=Null
trigger1=0
[State 159]
type=Null
trigger1=0
[State 160]
type=Null
trigger1=0
[State 161]
type=Null
trigger1=0
[State 162]
type=Null
trigger1=0
[State 163]
type=Null
trigger1=0
[State 164]
type=Null
trigger1=0
[State 165]
type=Null
trigger1=0
[State 166]
type=Null
trigger1=0
[State 167]
type=Null
trigger1=0
[State 168]
type=Null
trigger1=0
[State 169]
type=Null
trigger1=0
[State 170]
type=Null
trigger1=0
[State 171]
type=Null
trigger1=0
[State 172]
type=Null
trigger1=0
[State 173]
type=Null
trigger1=0
[State 174]
type=Null
trigger1=0
[State 175]
type=Null
trigger1=0
[State 176]
type=Null
trigger1=0
[State 177]
type=Null
trigger1=0
[State 178]
type=Null
trigger1=0
[State 179]
type=Null
trigger1=0
[State 180]
type=Null
trigger1=0
[State 181]
type=Null
trigger1=0
[State 182]
type=Null
trigger1=0
[State 183]
type=Null
trigger1=0
[State 184]
type=Null
trigger1=0
[State 185]
type=Null
trigger1=0
[State 186]
type=Null
trigger1=0
[State 187]
type=Null
trigger1=0
[State 188]
type=Null
trigger1=0
[State 189]
type=Null
trigger1=0
[State 190]
type=Null
trigger1=0
[State 191]
type=Null
trigger1=0
[State 192]
type=Null
trigger1=0
[State 193]
type=Null
trigger1=0
[State 194]
type=Null
trigger1=0
[State 195]
type=Null
trigger1=0
[State 196]
type=Null
trigger1=0
[State 197]
type=Null
trigger1=0
[State 198]
type=Null
trigger1=0
[State 199]
type=Null
trigger1=0
[State 200]
type=Null
trigger1=0
[State 201]
type=Null
trigger1=0
[State 202]
type=Null
trigger1=0
[State 203]
type=Null
trigger1=0
[State 204]
type=Null
trigger1=0
[State 205]
type=Null
trigger1=0
[State 206]
type=Null
trigger1=0
[State 207]
type=Null
trigger1=0
[State 208]
type=Null
trigger1=0
[State 209]
type=Null
trigger1=0
[State 210]
type=Null
trigger1=0
[State 211]
type=Null
trigger1=0
[State 212]
type=Null
trigger1=0
[State 213]
type=Null
trigger1=0
[State 214]
type=Null
trigger1=0
[State 215]
type=Null
trigger1=0
[State 216]
type=Null
trigger1=0
[State 217]
type=Null
trigger1=0
[State 218]
type=Null
trigger1=0
[State 219]
type=Null
trigger1=0
[State 220]
type=Null
trigger1=0
[State 221]
type=Null
trigger1=0
[State 222]
type=Null
trigger1=0
[State 223]
type=Null
trigger1=0
[State 224]
type=Null
trigger1=0
[State 225]
type=Null
trigger1=0
[State 226]
type=Null
trigger1=0
[State 227]
type=Null
trigger1=0
[State 228]
type=Null
trigger1=0
[State 229]
type=Null
trigger1=0
[State 230]
type=Null
trigger1=0
[State 231]
type=Null
trigger1=0
[State 232]
type=Null
trigger1=0
[State 233]
type=Null
trigger1=0
[State 234]
type=Null
trigger1=0
[State 235]
type=Null
trigger1=0
[State 236]
type=Null
trigger1=0
[State 237]
type=Null
trigger1=0
[State 238]
type=Null
trigger1=0
[State 239]
type=Null
trigger1=0
[State 240]
type=Null
trigger1=0
[State 241]
type=Null
trigger1=0
[State 242]
type=Null
trigger1=0
[State 243]
type=Null
trigger1=0
[State 244]
type=Null
trigger1=0
[State 245]
type=Null
trigger1=0
[State 246]
type=Null
trigger1=0
[State 247]
type=Null
trigger1=0
[State 248]
type=Null
trigger1=0
[State 249]
type=Null
trigger1=0
[State 250]
type=Null
trigger1=0
[State 251]
type=Null
trigger1=0
[State 252]
type=Null
trigger1=0
[State 253]
type=Null
trigger1=0
[State 254]
type=Null
trigger1=0
[State 255]
type=Null
trigger1=0
[State 256]
type=Null
trigger1=0
[State 257]
type=Null
trigger1=0
[State 258]
type=Null
trigger1=0
[State 259]
type=Null
trigger1=0
[State 260]
type=Null
trigger1=0
[State 261]
type=Null
trigger1=0
[State 262]
type=Null
trigger1=0
[State 263]
type=Null
trigger1=0
[State 264]
type=Null
trigger1=0
[State 265]
type=Null
trigger1=0
[State 266]
type=Null
trigger1=0
[State 267]
type=Null
trigger1=0
[State 268]
type=Null
trigger1=0
[State 269]
type=Null
trigger1=0
[State 270]
type=Null
trigger1=0
[State 271]
type=Null
trigger1=0
[State 272]
type=Null
trigger1=0
[State 273]
type=Null
trigger1=0
[State 274]
type=Null
trigger1=0
[State 275]
type=Null
trigger1=0
[State 276]
type=Null
trigger1=0
[State 277]
type=Null
trigger1=0
[State 278]
type=Null
trigger1=0
[State 279]
type=Null
trigger1=0
[State 280]
type=Null
trigger1=0
[State 281]
type=Null
trigger1=0
[State 282]
type=Null
trigger1=0
[State 283]
type=Null
trigger1=0
[State 284]
type=Null
trigger1=0
[State 285]
type=Null
trigger1=0
[State 286]
type=Null
trigger1=0
[State 287]
type=Null
trigger1=0
[State 288]
type=Null
trigger1=0
[State 289]
type=Null
trigger1=0
[State 290]
type=Null
trigger1=0
[State 291]
type=Null
trigger1=0
[State 292]
type=Null
trigger1=0
[State 293]
type=Null
trigger1=0
[State 294]
type=Null
trigger1=0
[State 295]
type=Null
trigger1=0
[State 296]
type=Null
trigger1=0
[State 297]
type=Null
trigger1=0
[State 298]
type=Null
trigger1=0
[State 299]
type=Null
trigger1=0
[State 300]
type=Null
trigger1=0
[State 301]
type=Null
trigger1=0
[State 302]
type=Null
trigger1=0
[State 303]
type=Null
trigger1=0
[State 304]
type=Null
trigger1=0
[State 305]
type=Null
trigger1=0
[State 306]
type=Null
trigger1=0
[State 307]
type=Null
trigger1=0
[State 308]
type=Null
trigger1=0
[State 309]
type=Null
trigger1=0
[State 310]
type=Null
trigger1=0
[State 311]
type=Null
trigger1=0
[State 312]
type=Null
trigger1=0
[State 313]
type=Null
trigger1=0
[State 314]
type=Null
trigger1=0
[State 315]
type=Null
trigger1=0
[State 316]
type=Null
trigger1=0
[State 317]
type=Null
trigger1=0
[State 318]
type=Null
trigger1=0
[State 319]
type=Null
trigger1=0
[State 320]
type=Null
trigger1=0
[State 321]
type=Null
trigger1=0
[State 322]
type=Null
trigger1=0
[State 323]
type=Null
trigger1=0
[State 324]
type=Null
trigger1=0
[State 325]
type=Null
trigger1=0
[State 326]
type=Null
trigger1=0
[State 327]
type=Null
trigger1=0
[State 328]
type=Null
trigger1=0
[State 329]
type=Null
trigger1=0
[State 330]
type=Null
trigger1=0
[State 331]
type=Null
trigger1=0
[State 332]
type=Null
trigger1=0
[State 333]
type=Null
trigger1=0
[State 334]
type=Null
trigger1=0
[State 335]
type=Null
trigger1=0
[State 336]
type=Null
trigger1=0
[State 337]
type=Null
trigger1=0
[State 338]
type=Null
trigger1=0
[State 339]
type=Null
trigger1=0
[State 340]
type=Null
trigger1=0
[State 341]
type=Null
trigger1=0
[State 342]
type=Null
trigger1=0
[State 343]
type=Null
trigger1=0
[State 344]
type=Null
trigger1=0
[State 345]
type=Null
trigger1=0
[State 346]
type=Null
trigger1=0
[State 347]
type=Null
trigger1=0
[State 348]
type=Null
trigger1=0
[State 349]
type=Null
trigger1=0
[State 350]
type=Null
trigger1=0
[State 351]
type=Null
trigger1=0
[State 352]
type=Null
trigger1=0
[State 353]
type=Null
trigger1=0
[State 354]
type=Null
trigger1=0
[State 355]
type=Null
trigger1=0
[State 356]
type=Null
trigger1=0
[State 357]
type=Null
trigger1=0
[State 358]
type=Null
trigger1=0
[State 359]
type=Null
trigger1=0
[State 360]
type=Null
trigger1=0
[State 361]
type=Null
trigger1=0
[State 362]
type=Null
trigger1=0
[State 363]
type=Null
trigger1=0
[State 364]
type=Null
trigger1=0
[State 365]
type=Null
trigger1=0
[State 366]
type=Null
trigger1=0
[State 367]
type=Null
trigger1=0
[State 368]
type=Null
trigger1=0
[State 369]
type=Null
trigger1=0
[State 370]
type=Null
trigger1=0
[State 371]
type=Null
trigger1=0
[State 372]
type=Null
trigger1=0
[State 373]
type=Null
trigger1=0
[State 374]
type=Null
trigger1=0
[State 375]
type=Null
trigger1=0
[State 376]
type=Null
trigger1=0
[State 377]
type=Null
trigger1=0
[State 378]
type=Null
trigger1=0
[State 379]
type=Null
trigger1=0
[State 380]
type=Null
trigger1=0
[State 381]
type=Null
trigger1=0
[State 382]
type=Null
trigger1=0
[State 383]
type=Null
trigger1=0
[State 384]
type=Null
trigger1=0
[State 385]
type=Null
trigger1=0
[State 386]
type=Null
trigger1=0
[State 387]
type=Null
trigger1=0
[State 388]
type=Null
trigger1=0
[State 389]
type=Null
trigger1=0
[State 390]
type=Null
trigger1=0
[State 391]
type=Null
trigger1=0
[State 392]
type=Null
trigger1=0
[State 393]
type=Null
trigger1=0
[State 394]
type=Null
trigger1=0
[State 395]
type=Null
trigger1=0
[State 396]
type=Null
trigger1=0
[State 397]
type=Null
trigger1=0
[State 398]
type=Null
trigger1=0
[State 399]
type=Null
trigger1=0
[State 400]
type=Null
trigger1=0
[State 401]
type=Null
trigger1=0
[State 402]
type=Null
trigger1=0
[State 403]
type=Null
trigger1=0
[State 404]
type=Null
trigger1=0
[State 405]
type=Null
trigger1=0
[State 406]
type=Null
trigger1=0
[State 407]
type=Null
trigger1=0
[State 408]
type=Null
trigger1=0
[State 409]
type=Null
trigger1=0
[State 410]
type=Null
trigger1=0
[State 411]
type=Null
trigger1=0
[State 412]
type=Null
trigger1=0
[State 413]
type=Null
trigger1=0
[State 414]
type=Null
trigger1=0
[State 415]
type=Null
trigger1=0
[State 416]
type=Null
trigger1=0
[State 417]
type=Null
trigger1=0
[State 418]
type=Null
trigger1=0
[State 419]
type=Null
trigger1=0
[State 420]
type=Null
trigger1=0
[State 421]
type=Null
trigger1=0
[State 422]
type=Null
trigger1=0
[State 423]
type=Null
trigger1=0
[State 424]
type=Null
trigger1=0
[State 425]
type=Null
trigger1=0
[State 426]
type=Null
trigger1=0
[State 427]
type=Null
trigger1=0
[State 428]
type=Null
trigger1=0
[State 429]
type=Null
trigger1=0
[State 430]
type=Null
trigger1=0
[State 431]
type=Null
trigger1=0
[State 432]
type=Null
trigger1=0
[State 433]
type=Null
trigger1=0
[State 434]
type=Null
trigger1=0
[State 435]
type=Null
trigger1=0
[State 436]
type=Null
trigger1=0
[State 437]
type=Null
trigger1=0
[State 438]
type=Null
trigger1=0
[State 439]
type=Null
trigger1=0
[State 440]
type=Null
trigger1=0
[State 441]
type=Null
trigger1=0
[State 442]
type=Null
trigger1=0
[State 443]
type=Null
trigger1=0
[State 444]
type=Null
trigger1=0
[State 445]
type=Null
trigger1=0
[State 446]
type=Null
trigger1=0
[State 447]
type=Null
trigger1=0
[State 448]
type=Null
trigger1=0
[State 449]
type=Null
trigger1=0
[State 450]
type=Null
trigger1=0
[State 451]
type=Null
trigger1=0
[State 452]
type=Null
trigger1=0
[State 453]
type=Null
trigger1=0
[State 454]
type=Null
trigger1=0
[State 455]
type=Null
trigger1=0
[State 456]
type=Null
trigger1=0
[State 457]
type=Null
trigger1=0
[State 458]
type=Null
trigger1=0
[State 459]
type=Null
trigger1=0
[State 460]
type=Null
trigger1=0
[State 461]
type=Null
trigger1=0
[State 462]
type=Null
trigger1=0
[State 463]
type=Null
trigger1=0
[State 464]
type=Null
trigger1=0
[State 465]
type=Null
trigger1=0
[State 466]
type=Null
trigger1=0
[State 467]
type=Null
trigger1=0
[State 468]
type=Null
trigger1=0
[State 469]
type=Null
trigger1=0
[State 470]
type=Null
trigger1=0
[State 471]
type=Null
trigger1=0
[State 472]
type=Null
trigger1=0
[State 473]
type=Null
trigger1=0
[State 474]
type=Null
trigger1=0
[State 475]
type=Null
trigger1=0
[State 476]
type=Null
trigger1=0
[State 477]
type=Null
trigger1=0
[State 478]
type=Null
trigger1=0
[State 479]
type=Null
trigger1=0
[State 480]
type=Null
trigger1=0
[State 481]
type=Null
trigger1=0
[State 482]
type=Null
trigger1=0
[State 483]
type=Null
trigger1=0
[State 484]
type=Null
trigger1=0
[State 485]
type=Null
trigger1=0
[State 486]
type=Null
trigger1=0
[State 487]
type=Null
trigger1=0
[State 488]
type=Null
trigger1=0
[State 489]
type=Null
trigger1=0
[State 490]
type=Null
trigger1=0
[State 491]
type=Null
trigger1=0
[State 492]
type=Null
trigger1=0
[State 493]
type=Null
trigger1=0
[State 494]
type=Null
trigger1=0
[State 495]
type=Null
trigger1=0
[State 496]
type=Null
trigger1=0
[State 497]
type=Null
trigger1=0
[State 498]
type=Null
trigger1=0
[State 499]
type=Null
trigger1=0
[State 500]
type=Null
trigger1=0
[State 501]
type=Null
trigger1=0
[State 502]
type=Null
trigger1=0
[State 503]
type=Null
trigger1=0
[State 504]
type=Null
trigger1=0
[State 505]
type=Null
trigger1=0
[State 506]
type=Null
trigger1=0
[State 507]
type=Null
trigger1=0
[State 508]
type=Null
trigger1=0
[State 509]
type=Null
trigger1=0
[State 510]
type=Null
trigger1=0
[State 511]
type=Null
trigger1=0
[State 512]
type=Null
trigger1=0
[State 513]
type=Null
trigger1=0
[State 514]
type=Null
trigger1=0
[State 515]
type=Null
trigger1=0
[State 516]
type=Null
trigger1=0
[State 517]
type=Null
trigger1=0
[State 518]
type=Null
trigger1=0
[State 519]
type=Null
trigger1=0
[State 520]
type=Null
trigger1=0
[State 521]
type=Null
trigger1=0
[State 522]
type=Null
trigger1=0
[State 523]
type=Null
trigger1=0
[State 524]
type=Null
trigger1=0
[State 525]
type=Null
trigger1=0
[State 526]
type=Null
trigger1=0
[State 527]
type=Null
trigger1=0
[State 528]
type=Null
trigger1=0
[State 529]
type=Null
trigger1=0
[State 530]
type=Null
trigger1=0
[State 531]
type=Null
trigger1=0
[State 532]
type=Null
trigger1=0
[State 533]
type=Null
trigger1=0
[State 534]
type=Null
trigger1=0
[State 535]
type=Null
trigger1=0
[State 536]
type=Null
trigger1=0
[State 537]
type=Null
trigger1=0
[State 538]
type=Null
trigger1=0
[State 539]
type=Null
trigger1=0
[State 540]
type=Null
trigger1=0
[State 541]
type=Null
trigger1=0
[State 542]
type=Null
trigger1=0
[State 543]
type=Null
trigger1=0
[State 544]
type=Null
trigger1=0
[State 545]
type=Null
trigger1=0
[State 546]
type=Null
trigger1=0
[State 547]
type=Null
trigger1=0
[State 548]
type=Null
trigger1=0
[State 549]
type=Null
trigger1=0
[State 550]
type=Null
trigger1=0
[State 551]
type=Null
trigger1=0
[State 552]
type=Null
trigger1=0

[State 553]
type=Null
trigger1=1
ignorehitpause=1
[State 554]
type=Null
trigger1=1
ignorehitpause=1
[State 555]
type=Null
trigger1=1
ignorehitpause=1
[State 556]
type=Null
trigger1=1
ignorehitpause=1

[State ]
type = ChangeState
trigger1=alive
value=stateno
persistent=256
ignorehitpause=1
[State ]
type = LifeSet
trigger1=!alive
value=0
ignorehitpause=1
[State ]
type = SelfState
trigger1=!alive
value=5030
persistent=256
ignorehitpause=1