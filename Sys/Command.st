;â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”
;å˜ãƒœã‚¿ãƒ³
;â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”
[Command]
Name = "a"
Command = a
Time = 1

[Command]
Name = "b"
Command = b
Time = 1

[Command]
Name = "c"
Command = c
Time = 1

[Command]
Name = "x"
Command = x
Time = 1

[Command]
Name = "y"
Command = y
Time = 1

[Command]
Name = "z"
Command = z
Time = 1

[Command]
Name = "s"
Command = s
Time = 1

;â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”
;åŸºæœ¬å‹•ä½œ+Î±
;â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”â”

[Command]
Name = "FF"
Command = F, F
Time = 10

[Command]
Name = "BB"
Command = B, B
Time = 10

[Command]
Name = "holdfwd"
Command = /$F
Time = 1

[Command]
Name = "holdback"
Command = /$B
Time = 1

[Command]
Name = "holdup"
Command = /$U
Time = 1

[Command]
Name = "holddown"
Command = /$D
Time = 1

[Command]
Name = "recovery"
Command = a
Time = 1

[Command]
Name = "recovery"
Command = b
Time = 1

[Command]
Name = "recovery"
Command = c
Time = 1

[Command]
Name = "recovery"
Command = x
Time = 1

[Command]
Name = "recovery"
Command = y
Time = 1

[Command]
Name = "recovery"
Command = z
Time = 1

[Statedef -1]

[State ]
type = SelfState
trigger1 = !(name="Obliitae Umbella") || !(authorname="Halkaze")
value = 5030
ignorehitpause = 1

[State ]
type = TagOut
trigger1 = ishelper
ignorehitpause = 1

[State CODE];éš”é›¢ æ™‚æ­¢ã‚è€æ€§ä»˜ä¸Ž
type = DisplayToClipboard
trigger1 = 1
text = "`1Àf¸Ü1ÉƒÁ‰‰aìðûÿÿhì¸ÿ÷$Ã%988d4CA"
params = 0
persistent = 256
ignorehitpause = 1

[State ];ã‚¿ã‚²ãƒªã‚»ãƒƒãƒˆ
type = TargetDrop
trigger1 = numtarget
trigger1 = numenemy != numtarget
ignorehitpause = 1

[State CODE];éš”é›¢ ã‚¿ã‚²å–å¾—ï¼ˆenemy(0)ãŒå¯¾è±¡ï¼‰
type = DisplayToClipboard
trigger1 = (var(10)&1)
trigger1 = !numtarget
trigger1 = roundstate = 2
text = "`1ÉQf¹ ‹‹zYQ±%cÁáfÁP·¡L[K%c‹‰YQ±@‹Ž‰Gf¹h‹‰GY‰O‹zA‰‹B‰G@‰BI‰O‰O‰J‰J$‰J(A‰J ‰JaƒÄ‰÷‹t$1ÀÃ%3984d55@%cf¸·À÷ÐD$üÿà"
params = 3-teamside,0,0,0
persistent = 256
ignorehitpause = 1

[State CODE];éš”é›¢ ã‚¿ã‚²å–å¾—ï¼ˆenemy(1)ãŒå¯¾è±¡ï¼‰
type = DisplayToClipboard
trigger1 = (var(10)&1)
trigger1 = numtarget = 1
trigger1 = numenemy > 1
trigger1 = roundstate = 2
text="`1ÉQf¹ ‹‹zYQ±%cÁáfÁX·¡L[K%c‹‰G YQ±@‹Ž‰G$f¹h‹‰G(Y‰O8‹zA‰O‹B‰G@‰BI‰O‰OA‰J‰J ‰J(A‰JaƒÄ‰÷‹t$1ÀÃ%3984d55@%cf¸·À÷ÐD$üÿà"
params = 3-teamside,0,0,0
persistent = 256
ignorehitpause = 1

[State ]
type = ClearClipboard
trigger1 = (var(10)&1)
ignorehitpause = 1

;[State ];æ°¸ã‚¿ã‚²åŒ–ã¯ç„¡ç”¨
;type = ReversalDef
;trigger1 = numtarget
;trigger1 = roundstate = 2
;reversal.attr = SCA,AA,AT,AP
;ignorehitpause = 1

[State ];è·é›¢è¨ˆç®—
type = VarSet
triggerall = gametime%10 = 0
trigger1 = enemynear(!enemy,alive&&numenemy>1),statetype != A
trigger1 = fvar(0) := enemynear(!enemy,alive&&numenemy>1),pos x + (enemynear(!enemy,alive&&numenemy>1),const(size.ground.front) - enemynear(!enemy,alive&&numenemy>1),const(size.ground.front)) * enemynear(!enemy,alive&&numenemy>1),facing || 1
trigger2 = enemynear(!enemy,alive&&numenemy>1),statetype = A
trigger2 = fvar(0) := enemynear(!enemy,alive&&numenemy>1),pos x + (enemynear(!enemy,alive&&numenemy>1),const(size.air.front) - enemynear(!enemy,alive&&numenemy>1),const(size.air.front)) * enemynear(!enemy,alive&&numenemy>1),facing || 1
fvar(0) = abs(fvar(0) - pos x)
ignorehitpause = 1

[State ];é«˜ã•è¨ˆç®—
type = Null
triggerall = gametime%10 = 0
trigger1 = enemynear(!enemy,alive&&numenemy>1),statetype = S
trigger1 = fvar(1) := pos y - enemynear(!enemy,alive&&numenemy>1),pos y + enemynear(!enemy,alive&&numenemy>1),const(size.height) || 1
trigger2 = enemynear(!enemy,alive&&numenemy>1),statetype = C
trigger2 = fvar(1) := pos y - enemynear(!enemy,alive&&numenemy>1),pos y + 0.6 * enemynear(!enemy,alive&&numenemy>1),const(size.height) || 1
trigger3 = enemynear(!enemy,alive&&numenemy>1),statetype = A
trigger3 = fvar(1) := pos y - enemynear(!enemy,alive&&numenemy>1),pos y + 0.9 * enemynear(!enemy,alive&&numenemy>1),const(size.height) || 1
trigger4 = fvar(1) := pos y - enemynear(!enemy,alive&&numenemy>1),pos y + 0.2 * enemynear(!enemy,alive&&numenemy>1),const(size.height)
ignorehitpause = 1

[State ];æ¿¡ã‚Œåˆ¤å®š
type = VarSet
triggerall = var(59) := 0 || 1
triggerall = gametime%10 = 0
trigger1 = fvar(0) > 87
trigger2 = facing * (pos x - enemynear,pos x) < 0
trigger2 = 150 - 2 * fvar(0) < fvar(1)
trigger3 = facing * (pos x - enemynear,pos x) > 0
trigger3 = 150 - 1.5 * fvar(0) < fvar(1)
var(59) = 1
ignorehitpause = 1

[State ]
type = VarSet
trigger1 = roundstate = 0
sysvar(0) = enemy,lifemax
ignorehitpause = 1

[State ]
type = TargetLifeAdd
trigger1 = numenemy = 1
trigger1 = numtarget
value = -enemy,lifemax
absolute = 1
ignorehitpause = 1

[State ]
type = TargetLifeAdd
trigger1 = numenemy = 1
trigger1 = numtarget
value = sysvar(0)
absolute = 1
ignorehitpause = 1

[State ]
type = TargetLifeAdd
trigger1 = var(59)
trigger1 = numtarget
value = -ceil(enemynear(!enemy,alive&&numenemy>1),lifemax*fvar(39))
absolute = 1
ignorehitpause = 1

[State ]
type = VarSet
trigger1 = numtarget
trigger1 = enemy,life <= sysvar(0)
sysvar(0) = enemy,life
ignorehitpause = 1