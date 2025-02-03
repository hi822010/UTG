local delete = delete or _G.delete
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Character.Animate.Enabled = false
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
attacktype2 = 1
vt = Vector3.new
cf = CFrame.new
cn = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
stance = false
local ff = 2
noleg = false
evadecooldown = false
Humanoid.Animator.Parent = nil
equip = false
Face.Texture = "http://www.roblox.com/asset/?id=0"
attackspeed = 0.14
df = false
Swing = 1
local sine = 0
local change = 1
local val = 0
magic = false
cam = workspace.CurrentCamera
deb = game:GetService("Debris")
--RbxUtility = --LoadLibrary("RbxUtility")
Create = function(Instname)
	local obj = Instance.new(Instname)
	local func = function(tbl)
		for i,v in pairs(tbl) do
			obj[i] = v
		end
		return obj
	end
	return func
end

-- RbxUtility.Create
local handee = Instance.new("Part")
handee.Parent = Character
handee.Size = Vector3.new(0.2, 0.2, 0.2)
handee.Archivable = true
handee.Transparency = 1
handee.CanCollide = false
handee.BrickColor = BrickColor.new("Cyan")
handee.Material = "Neon"
local handeeweld = Instance.new("Weld")
handeeweld.Parent = handee
handeeweld.Part0 = RightArm
handeeweld.Part1 = handee
handeeweld.C1 = CFrame.new(0, 0.96, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
handeeweld.Part0 = RightArm
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
function weld(model)
	local parts, last = {}, nil
	local function scan(parent)
		for _, v in pairs(parent:GetChildren()) do
			if v:IsA("BasePart") then
				if last then
					local w = Instance.new("Weld")
					w.Name = ("%s_Weld"):format(v.Name)
					w.Part0, w.Part1 = last, v
					w.C0 = last.CFrame:inverse()
					w.C1 = v.CFrame:inverse()
					w.Parent = last
				end
				last = v
				table.insert(parts, v)
			end
			scan(v)
		end
	end
	scan(model)
	for _, v in pairs(parts) do
		v.Anchored = false
		v.Locked = true
		v.BackSurface = Enum.SurfaceType.SmoothNoOutlines
		v.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
		v.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
		v.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
		v.RightSurface = Enum.SurfaceType.SmoothNoOutlines
		v.TopSurface = Enum.SurfaceType.SmoothNoOutlines
		v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
	end
end

music = Instance.new("Sound", Torso)
music.Volume = 1
music.TimePosition = 0
music.Pitch = 1
music.SoundId = "rbxassetid://1466277933"
music.Looped = true
music:Play()
function so(id, par, vol, pit)
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait()
		sou:play()
		game:GetService("Debris"):AddItem(sou, 8)
	end))
end
RSH, LSH = nil, nil
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
function NoOutline(Part)
	Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
end
player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso

newWeld(RootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
newWeld(Torso, LeftLeg, -0.5, -1, 0)
LeftLeg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(Torso, RightLeg, 0.5, -1, 0)
RightLeg.Weld.C1 = CFrame.new(0, 1, 0)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.016666666666666666
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	},
	CreateTemplate = {}
}
EffectModel = Create("Model")({Parent = Character, Name = "Effects"})
Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end
	},
	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Elect = {
		Create = function(cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			table.insert(Effects, {
				prt,
				"Elec",
				0.1,
				x,
				y,
				z,
				xval,
				yval,
				zval
			})
		end
	},
	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	},
	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end
	},
	Fire = {
		Create = function(brickcolor, cframe, x1, y1, z1, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Fire",
				delay,
				1,
				1,
				1,
				msh
			})
		end
	},
	FireWave = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local d = Create("Decal")({
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Top"
			})
			local d = Create("Decal")({
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Bottom"
			})
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"FireWave",
				1,
				30,
				math.random(400, 600) / 100,
				msh
			})
		end
	},
	Lightning = {
		Create = function(p0, p1, tym, ofs, col, th, tra, last)
			local magz = (p0 - p1).magnitude
			local curpos = p0
			local trz = {
				-ofs,
				ofs
			}
			for i = 1, tym do
				local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
				local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
				local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).Position + ofz
				li.Material = "Neon"
				if tym == i then
					local magz2 = (curpos - p1).magnitude
					li.Size = Vector3.new(th, th, magz2)
					li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				else
					li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
					curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).Position
					game.Debris:AddItem(li, 10)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				end
			end
		end
	},
	EffectTemplate = {}
}
function New(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / math.sin(theta)
		startInterp = math.sin((t - 1) * theta) * invSinTheta
		finishInterp = math.sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function weld5(part0, part1, c0, c1)
	local weeld = Instance.new("Weld", part0)
	weeld.Part0 = part0
	weeld.Part1 = part1
	weeld.C0 = c0
	weeld.C1 = c1
	return weeld
end
function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function Damagefunc(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
	if hit.Parent == nil then return end
	local hum = hit.Parent:FindFirstChild("Humanoid") or (hit.Name == "Handle" and hit.Parent.Parent:FindFirstChild("Humanoid"))
	local hitpart
	if hum == nil then
		return
	end
	local tchar = hum.Parent
	hitpart = tchar:FindFirstChild("Head") or tchar:FindFirstChild("Torso") or tchar:FindFirstChild("LowerTorso") or tchar:FindFirstChild("HumanoidRootPart")
	if hitpart then
		delete(hitpart)
	end
end

function attackone()
	attack = true
	for i = 0, 2, attackspeed + 0.16 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.3 * i) * angles(math.rad(60 * i), math.rad(0), math.rad(-20 * i)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(3), math.rad(0)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(4)), 0.2)
	end
	so("http://roblox.com/asset/?id=1022532343", LeftArm, 1, 1)
	RootPart.Velocity = RootPart.CFrame.lookVector * 34
	local con5 = Humanoid.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and attackdebounce == false and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			attackdebounce = true
			Damagefunc(hit, 5, 8, math.random(5, 8), "Normal", RootPart, 0, 1)
			so("http://roblox.com/asset/?id=573395724", LeftArm, 1, 1)
			wait(0.2)
			attackdebounce = false
		end
	end)
	for i = 0, 1, attackspeed do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.4)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(60)), 0.4)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.4)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.3) * angles(math.rad(20), math.rad(-40 * i), math.rad(-90)), 0.4)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(3), math.rad(-4)), 0.3)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-3), math.rad(0)), 0.3)
	end
	attack = false
	con5:Disconnect()
end
function attacktwo()
	attack = true
	for i = 0, 2, 0.15 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(30)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.3 * i) * angles(math.rad(60 * i), math.rad(0), math.rad(20 * i)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90 - 40 * i), math.rad(0), math.rad(-90 + 40 * i)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(4)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-3), math.rad(0)), 0.2)
	end
	so("http://roblox.com/asset/?id=169259383", RightArm, 1, 1)
	RootPart.Velocity = RootPart.CFrame.lookVector * 45
	local con5 = Humanoid.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and attackdebounce == false and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			attackdebounce = true
			Damagefunc(hit, 6, 17, math.random(5, 12), "Normal", RootPart, 0, 1)
			so("http://roblox.com/asset/?id=542443306", RightArm, 1, 1)
			wait(0.3)
			attackdebounce = false
		end
	end)
	for i = 0, 1, 0.07 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(90 * i), math.rad(0)), 0.6)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(15), math.rad(-70)), 0.4)
		RW.C0 = clerp(RW.C0, CFrame.new(0.9, 0.5, -0.5) * angles(math.rad(80), math.rad(0), math.rad(-50)), 0.7)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(50)), 0.4)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-40), math.rad(20), math.rad(0)), 0.3)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(-40), math.rad(20)), 0.3)
	end
	con5:Disconnect()
	attack = false
end
function attackthree()
	attack = true
	noleg = true
	for i = 0, 2.3, 0.16 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1.15, 2.5) * CFrame.Angles(math.rad(-27), math.rad(0 - 50 * i), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-24), math.rad(-8), math.rad(43)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(60)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-0.9, 0.5, -0.3) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -0.72, -0.4) * CFrame.Angles(math.rad(17), math.rad(0), math.rad(-16)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.34, -1.15, 0.3) * CFrame.Angles(math.rad(-77), math.rad(0), math.rad(0)), 0.2)
	end
	local con5 = Humanoid.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and attackdebounce == false and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			attackdebounce = true
			Damagefunc(hit, 6, 12, math.random(5, 8), "Normal", RootPart, 0, 1)
			so("http://roblox.com/asset/?id=573395724", LeftLeg, 1, 1)
			wait(0.17)
			attackdebounce = false
		end
	end)
	so("http://roblox.com/asset/?id=1022532343", LeftLeg, 1, 1.34)
	so("http://roblox.com/asset/?id=1022532343", RightLeg, 1, 1.34)
	for i = 0, 3.17, 0.11 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * 45
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -0.7, -0.9) * CFrame.Angles(math.rad(16 + 40 * i), math.rad(0 + 111 * i), math.rad(32 + 20 * i)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(23), math.rad(0), math.rad(-10)), 0.16)
		RW.C0 = clerp(RW.C0, CFrame.new(0.3, 0.35, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.16)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.2) * angles(math.rad(-70), math.rad(0), math.rad(-40)), 0.16)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.79, -0.95, 0.34) * CFrame.Angles(math.rad(-32), math.rad(32), math.rad(-40)), 0.17)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.4, -0.75, -0.43) * CFrame.Angles(math.rad(76), math.rad(38), math.rad(0)), 0.1)
	end
	for i = 0, 1, attackspeed do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, -0.4) * CFrame.Angles(math.rad(-8), math.rad(-30), math.rad(0)), 0.1)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(30)), 0.1)
		RW.C0 = clerp(RW.C0, CFrame.new(0.3, 0.35, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.16)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.1)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(3), math.rad(0)), 0.1)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1.03, 0.3) * CFrame.Angles(math.rad(-13), math.rad(0), math.rad(0)), 0.1)
	end
	noleg = false
	attack = false
	con5:Disconnect()
end
function Fdash()
	evadecooldown = true
	attack = true
	so("http://www.roblox.com/asset/?id=558640653", Character, 2.5, 1)
	Effects.Block.Create(BrickColor.new("Navy blue"), RootPart.CFrame, 2, 2, 2, 33.6, 33.6, 33.6, 0.05)
	Effects.Block.Create(BrickColor.new("White"), RootPart.CFrame, 2, 2, 2, 33.4, 33.4, 33.4, 0.04)
	Effects.Block.Create(BrickColor.new("Navy blue"), RootPart.CFrame, 2, 2, 2, 36.6, 36.6, 36.6, 0.05)
	Effects.Block.Create(BrickColor.new("Deep blue"), RootPart.CFrame, 2, 2, 2, 36.4, 36.4, 36.4, 0.05)
	Effects.Ring.Create(BrickColor.new("New Yeller"), Torso.CFrame, 2, 2, 2, 7.6, 7.6, 7.6, 0.025)
	Effects.Ring.Create(BrickColor.new("Deep blue"), Torso.CFrame, 2, 2, 2, 8.6, 8.6, 8.6, 0.03)
	Effects.Ring.Create(BrickColor.new("White"), Torso.CFrame, 2, 2, 2, 9.6, 9.6, 9.6, 0.04)
	Effects.Ring.Create(BrickColor.new("Navy blue"), Torso.CFrame, 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	for i = 0, 2, 0.064 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * 145
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, -4.8) * CFrame.Angles(math.rad(-90), math.rad(0 + 213.8 * i), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
	end
	attack = false
	wait(0.13)
	evadecooldown = false
end
function Adash()
	evadecooldown = true
	attack = true
	so("http://www.roblox.com/asset/?id=558640653", Character, 2.5, 1)
	RootPart.Velocity = RootPart.Velocity + Vector3.new(0,25,0)
	Effects.Block.Create(BrickColor.new("Navy blue"), LeftLeg.CFrame, 2, 2, 2, 33.6, 33.6, 33.6, 0.05)
	Effects.Block.Create(BrickColor.new("White"), RightLeg.CFrame, 2, 2, 2, 33.4, 33.4, 33.4, 0.04)
	Effects.Block.Create(BrickColor.new("Navy blue"), LeftLeg.CFrame, 2, 2, 2, 36.6, 36.6, 36.6, 0.05)
	Effects.Block.Create(BrickColor.new("Deep blue"), RightLeg.CFrame, 2, 2, 2, 36.4, 36.4, 36.4, 0.05)
	Torso.Velocity = RootPart.Velocity + vt(0, 19.4, 0)
	for i = 0, 2, 0.064 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 8, 0) * CFrame.Angles(math.rad(0), math.rad(0 + 213.8 * i), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-90), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
	end
	attack = false
	wait(0.13)
	evadecooldown = false
end
function Ldash()
	evadecooldown = true
	attack = true
	so("http://www.roblox.com/asset/?id=707957812", Torso, 2.5, 1)
	for i = 0, 2, 0.064 do
		swait()
		RootPart.Velocity = RootPart.CFrame.rightVector * -75
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(32)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(-9), math.rad(-14)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(77), math.rad(0), math.rad(70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.55) * angles(math.rad(30), math.rad(0), math.rad(70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(12)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(8)), 0.2)
	end
	attack = false
	wait(0.13)
	evadecooldown = false
end
function Rdash()
	evadecooldown = true
	attack = true
	so("http://www.roblox.com/asset/?id=707957812", Torso, 2.5, 1)
	for i = 0, 2, 0.064 do
		swait()
		RootPart.Velocity = RootPart.CFrame.rightVector * 75
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-32)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(9), math.rad(14)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.55) * angles(math.rad(30), math.rad(0), math.rad(-70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(77), math.rad(0), math.rad(-70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-8)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-12)), 0.2)
	end
	attack = false
	wait(0.13)
	evadecooldown = false
end
function Bdash()
	evadecooldown = true
	attack = true
	for i = 0, 8.4, 0.21 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * -90
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -0.79, 2.5) * CFrame.Angles(math.rad(0 + 100 * i), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(180), math.rad(-60), math.rad(40)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(180), math.rad(60), math.rad(-40)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
	end
	attack = false
	wait(0.9)
	evadecooldown = false
end
function bullets()
	local X = Instance.new("Part", workspace)
	local O = Instance.new("ObjectValue", X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0.24
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue", X)
	V.Value = Character
	V.Name = "creator"
	X.BrickColor = BrickColor.new("Cyan")
	X.Size = Vector3.new(2, 2, 2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh", X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.2, 0.2, 0.7) + Vector3.new(math.random(0, 0.7), math.random(0, 0.7), math.random(0, 0.7))
	X.CFrame = handee.CFrame * CFrame.new(0, -5, -1) + Vector3.new(math.random(-76, 76), math.random(5, 10), math.random(-44, 44))
	local bv = Instance.new("BodyVelocity", X)
	bv.maxForce = Vector3.new(99999, 99999, 99999)
	X.CFrame = CFrame.new(X.Position, mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector * 445
	so("http://roblox.com/asset/?id=200633327", X, 1, 1)
	local X2 = Instance.new("Part", workspace)
	local O2 = Instance.new("ObjectValue", X2)
	O2.Name = "creator"
	X2.Locked = true
	X2.Name = "Shell"
	X2.Anchored = false
	X2.CanCollide = false
	X2.Transparency = 0.24
	X2.Reflectance = 0
	X2.BottomSurface = 0
	X2.TopSurface = 0
	X2.Shape = 0
	local V2 = Instance.new("ObjectValue", X2)
	V2.Value = Character
	V2.Name = "creator"
	X2.BrickColor = BrickColor.new("New Yeller")
	X2.Size = Vector3.new(2, 2, 2)
	X2.Material = "Neon"
	local Z2 = Instance.new("SpecialMesh", X2)
	Z2.MeshType = "Sphere"
	Z2.Scale = Vector3.new(0.2, 0.2, 0.7) + Vector3.new(math.random(0, 0.7), math.random(0, 0.7), math.random(0, 0.7))
	X2.CFrame = handee.CFrame * CFrame.new(0, -5, -1) + Vector3.new(math.random(-76, 76), math.random(5, 10), math.random(-44, 44))
	local bv2 = Instance.new("BodyVelocity", X2)
	bv2.maxForce = Vector3.new(99999, 99999, 99999)
	X2.CFrame = CFrame.new(X2.Position, mouse.Hit.p)
	bv2.velocity = X2.CFrame.lookVector * 345
	so("http://roblox.com/asset/?id=200633327", X2, 1, 1)
	local X3 = Instance.new("Part", workspace)
	local O3 = Instance.new("ObjectValue", X3)
	O3.Name = "creator"
	X3.Locked = true
	X3.Name = "Shell"
	X3.Anchored = false
	X3.CanCollide = false
	X3.Transparency = 0.24
	X3.Reflectance = 0
	X3.BottomSurface = 0
	X3.TopSurface = 0
	X3.Shape = 0
	local V3 = Instance.new("ObjectValue", X3)
	V3.Value = Character
	V3.Name = "creator"
	X3.BrickColor = BrickColor.new("White")
	X3.Size = Vector3.new(2, 2, 2)
	X3.Material = "Neon"
	local Z3 = Instance.new("SpecialMesh", X3)
	Z3.MeshType = "Sphere"
	Z3.Scale = Vector3.new(0.2, 0.2, 0.7) + Vector3.new(math.random(0, 0.7), math.random(0, 0.7), math.random(0, 0.7))
	X3.CFrame = handee.CFrame * CFrame.new(0, -5, -1) + Vector3.new(math.random(-76, 76), math.random(5, 10), math.random(-44, 44))
	local bv3 = Instance.new("BodyVelocity", X3)
	bv3.maxForce = Vector3.new(99999, 99999, 99999)
	X3.CFrame = CFrame.new(X3.Position, mouse.Hit.p)
	bv3.velocity = X3.CFrame.lookVector * 545
	so("http://roblox.com/asset/?id=200633327", X3, 1, 1)
	local con5 = X.Touched:connect(function(hit)
		Effects.Sphere.Create(BrickColor.new("Toothpaste"), X.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
		X:Destroy()
		so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
		if hit.Parent and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "X2" and hit.Name ~= "X3" and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			Damagefunc(hit, 9, 16, math.random(4, 6), "Knockdown", RootPart, 0.2, 1)
			Effects.Sphere.Create(BrickColor.new("Toothpaste"), X.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
			so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
			X:Destroy()
		end
	end)
	local con5 = X2.Touched:connect(function(hit)
		Effects.Sphere.Create(BrickColor.new("New Yeller"), X2.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
		X2:Destroy()
		so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
		if hit.Parent and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "X" and hit.Name ~= "X3" and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			Damagefunc(hit, 9, 16, math.random(4, 6), "Knockdown", RootPart, 0.2, 1)
			Effects.Sphere.Create(BrickColor.new("New Yeller"), X2.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
			so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
			X2:Destroy()
		end
	end)
	local con5 = X3.Touched:connect(function(hit)
		Effects.Sphere.Create(BrickColor.new("White"), X3.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
		X3:Destroy()
		so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
		if hit.Parent and hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "X2" and hit.Name ~= "X" and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			Damagefunc(hit, 9, 16, math.random(4, 6), "Knockdown", RootPart, 0.2, 1)
			Effects.Sphere.Create(BrickColor.new("White"), X3.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
			so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
			X3:Destroy()
		end
	end)
end
function Fkickcombo()
	attack = true
	for i = 0, 2.3, 0.16 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1.15, 2.5) * CFrame.Angles(math.rad(-27), math.rad(0 - 50 * i), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-24), math.rad(-8), math.rad(43)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(60)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-0.9, 0.5, -0.3) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -0.72, -0.4) * CFrame.Angles(math.rad(17), math.rad(0), math.rad(-16)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.34, -1.15, 0.3) * CFrame.Angles(math.rad(-77), math.rad(0), math.rad(0)), 0.2)
	end
	local con5 = Humanoid.Touched:connect(function(hit)
		if hit.Parent:FindFirstChild("Humanoid") ~= nil and attackdebounce == false and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
			attackdebounce = true
			Damagefunc(hit, 17, 26, math.random(2, 3), "Normal", RootPart, 0, 1)
			so("http://roblox.com/asset/?id=260429995", RightLeg, 2, 1)
			wait(0.14)
			attackdebounce = false
		end
	end)
	so("http://roblox.com/asset/?id=158475221", Torso, 1, 1.9)
	noleg = true
	for i = 0, 3.3, 0.11 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 2.4, -0.8) * CFrame.Angles(math.rad(13 - 22 * i), math.rad(0 + 130 * i), math.rad(80 - 15 * i)), 0.15)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(13), math.rad(-17), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(0.7, 0.5, -0.7) * angles(math.rad(80), math.rad(0), math.rad(-70)), 0.15)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(-30)), 0.15)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.03, 0.4) * CFrame.Angles(math.rad(-54 - 3 * i), math.rad(0), math.rad(0)), 0.15)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, -0.7) * CFrame.Angles(math.rad(60 + 3 * i), math.rad(10), math.rad(-4)), 0.15)
	end
	attack = false
	noleg = false
	con5:disconnect()
end
function Magicform()
	df = true
	attack = true
	music.TimePosition = 0
	music.SoundId = "rbxassetid://1228696343"
	swait(1)
	for i = 0, 4, 0.1 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(24), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.35) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.35) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-4), math.rad(3)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), math.rad(4), math.rad(-3)), 0.2)
	end
	so("http://roblox.com/asset/?id=1286168545", Head, 6, 1)
	Effects.Sphere.Create(BrickColor.new("Toothpaste"), Torso.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
	for i = 0, 4, 0.1 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-54), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(-70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(4), math.rad(-3)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(-4), math.rad(3)), 0.2)
	end
	attack = false
end
function Magicrevert()
	df = false
	attack = true
	music.TimePosition = 0
	music.SoundId = "rbxassetid://1343241846"
	swait(1)
	for i = 0, 4, 0.1 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(24), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.35) * angles(math.rad(90), math.rad(0), math.rad(-70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.5, -0.35) * angles(math.rad(90), math.rad(0), math.rad(70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-4), math.rad(3)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), math.rad(4), math.rad(-3)), 0.2)
	end
	so("http://roblox.com/asset/?id=1286168545", Head, 6, 1)
	Effects.Sphere.Create(BrickColor.new("New Yeller"), Torso.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
	for i = 0, 4, 0.1 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-54), math.rad(0), math.rad(0)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-60), math.rad(0), math.rad(-70)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(4), math.rad(-3)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(-4), math.rad(3)), 0.2)
	end
	attack = false
end
function Sphere1()
	magic = true
	while magic == true do
		do
			local thing = Instance.new("BodyGyro", RootPart)
			thing.D = 30
			thing.P = 3000
			thing.MaxTorque = vt(math.huge, math.huge, 0)
			thing.CFrame = CFrame.new(RootPart.Position, mouse.Hit.p)
			attack = true
			Effects.Block.Create(BrickColor.new("Navy blue"), handee.CFrame, 2, 2, 2, 3.6, 3.6, 3.6, 0.07)
			for i = 0, 1.6, 0.22 do
				swait()
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-14), math.rad(-60), math.rad(0)), 0.2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.2)
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.06, 0) * CFrame.Angles(math.rad(-8), math.rad(27), math.rad(-12)), 0.2)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(2), math.rad(-24), math.rad(7)), 0.2)
			end
			local X = Instance.new("Part", workspace)
			local O = Instance.new("ObjectValue", X)
			O.Name = "creator"
			X.Locked = true
			X.Name = "Shell"
			X.Anchored = false
			X.CanCollide = false
			X.Transparency = 0.24
			X.Reflectance = 0
			X.BottomSurface = 0
			X.TopSurface = 0
			X.Shape = 0
			local V = Instance.new("ObjectValue", X)
			V.Value = Character
			V.Name = "creator"
			X.BrickColor = BrickColor.new("Cyan")
			X.Size = Vector3.new(2, 2, 2)
			X.Material = "Neon"
			local Z = Instance.new("SpecialMesh", X)
			Z.MeshType = "Sphere"
			Z.Scale = Vector3.new(1.5, 1.5, 2)
			X.CFrame = handee.CFrame * CFrame.new(0, -5, -1)
			local bv = Instance.new("BodyVelocity", X)
			bv.maxForce = Vector3.new(99999, 99999, 99999)
			X.CFrame = CFrame.new(X.Position, mouse.Hit.p)
			bv.velocity = X.CFrame.lookVector * 245
			RootPart.Velocity = RootPart.CFrame.lookVector * -43
			Torso.Velocity = RootPart.Velocity + vt(0, 3.4, 0)
			game:service("Debris"):AddItem(X, 9)
			local con5 = X.Touched:connect(function(hit)
				Effects.Sphere.Create(BrickColor.new("Toothpaste"), X.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
				X:Destroy()
				so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
				if hit.Parent:FindFirstChild("Humanoid") ~= nil and attackdebounce == false and hit.Parent ~= Character and hit.Parent.Name ~= Player.Name then
					attackdebounce = true
					Damagefunc(hit, 9, 16, math.random(4, 6), "Knockdown", RootPart, 0.2, 1)
					Effects.Sphere.Create(BrickColor.new("Toothpaste"), X.CFrame, 2, 2, 2, 37.6, 37.6, 37.6, 0.07)
					so("http://roblox.com/asset/?id=265581252", workspace, 0.5, 1)
					X:Destroy()
					wait()
					attackdebounce = false
				end
			end)
			Effects.Block.Create(BrickColor.new("Navy blue"), handee.CFrame, 2, 2, 2, 3.6, 3.6, 3.6, 0.07)
			for i = 0, 2.86, 0.22 do
				swait()
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(40), math.rad(0)), 0.2)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(6), math.rad(0), math.rad(-50)), 0.2)
				RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.65) * angles(math.rad(80), math.rad(0), math.rad(-70)), 0.2)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.2)
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-16), math.rad(4), math.rad(11)), 0.2)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(16), math.rad(-4), math.rad(13)), 0.2)
			end
			thing:Destroy()
			attack = false
		end
	end
end
function Sphere2()
	attack = true
	local thing = Instance.new("BodyGyro", RootPart)
	thing.D = 30
	thing.P = 3000
	thing.MaxTorque = vt(math.huge, math.huge, 0)
	Effects.Block.Create(BrickColor.new("Navy blue"), handee.CFrame, 2, 2, 2, 3.6, 3.6, 3.6, 0.07)
	for i = 0, 2.86, 0.22 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(40), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(6), math.rad(0), math.rad(-50)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.2, 0.5, -0.65) * angles(math.rad(80), math.rad(0), math.rad(-70)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-16), math.rad(4), math.rad(11)), 0.2)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(16), math.rad(-4), math.rad(13)), 0.2)
	end
	for i = 1, 5 do
		thing.CFrame = CFrame.new(RootPart.Position, mouse.Hit.p)
		bullets()
		swait()
		bullets()
		bullets()
		wait(0.2)
		bullets()
		bullets()
		RootPart.Velocity = RootPart.CFrame.lookVector * -23
	end
	thing:Destroy()
	attack = false
end
function laser()
	local thing = Instance.new("BodyGyro", RootPart)
	thing.D = 0
	thing.P = 7000
	thing.MaxTorque = vt(math.huge, math.huge, 0)
	thing.CFrame = CFrame.new(RootPart.Position, mouse.Hit.p)
	attack = true
	so("http://roblox.com/asset/?id=1048497321", RightArm, 1, 1)
	for i = 0, 1, 0.1 do
		swait()
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
	end
	local ray = Ray.new(handee.CFrame.p, (mouse.Hit.p - handee.CFrame.p).unit * 700)
	local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Navy blue")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local beam1 = Instance.new("Part", workspace)
	beam1.BrickColor = BrickColor.new("Navy blue")
	beam1.FormFactor = "Custom"
	beam1.Material = "Neon"
	beam1.Transparency = 0
	beam1.Anchored = false
	beam1.Locked = true
	beam1.CanCollide = false
	local distance = (handee.CFrame.p - position).magnitude
	beam.Size = Vector3.new(1.71, 1.71, distance)
	beam1.Size = Vector3.new(2.71, 2.71, distance)
	beam.CFrame = CFrame.new(handee.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	beam1.CFrame = CFrame.new(handee.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	local Z = Instance.new("SpecialMesh", beam)
	Z.MeshType = "Sphere"
	local Z1 = Instance.new("SpecialMesh", beam1)
	Z1.MeshType = "Sphere"
	local bv = Instance.new("BodyVelocity", beam1)
	bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	beam1.CFrame = CFrame.new(beam1.Position, mouse.Hit.p)
	bv.velocity = beam1.CFrame.lookVector * 350
	so("http://roblox.com/asset/?id=215270668", RightArm, 6, 1)
	Torso.Anchored = true
	Effects.Ring.Create(BrickColor.new("Navy blue"), RootPart.CFrame, 2, 2, 2, 18.6, 18.6, 18.6, 0.02)
	Effects.Block.Create(BrickColor.new("Navy blue"), handee.CFrame, 2, 2, 2, 3.6, 3.6, 3.6, 0.03)
	if part then
		local humanoid = part.Parent:FindFirstChild("Humanoid")
		humanoid = humanoid or part.Parent.Parent:FindFirstChild("Humanoid")
		if humanoid and part.Parent:FindFirstChild("Humanoid") ~= nil and attackdebounce == false then
			attackdebounce = true
			Damagefunc(part, 1, 9, math.random(1, 2), "Knockdown", RootPart, 0.2, 1)
			swait()
			attackdebounce = false
		end
	end
	for i = 0, 3.8, 0.1 do
		swait()
		beam.Size = beam.Size + Vector3.new(3.71, 3.71, 0)
		beam1.Size = beam1.Size + Vector3.new(7.71, 7.71, 0)
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90 + 7 * math.cos(sine / 1.6) / 2), math.rad(0), math.rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
	end
	for i = 0, 3.8, 0.1 do
		swait()
		beam.Size = beam.Size - Vector3.new(6.71, 6.71, 0)
		beam1.Size = beam1.Size - Vector3.new(9.71, 9.71, 0)
		Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)), 0.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.2)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90 + 7 * math.cos(sine / 1.6) / 2), math.rad(0), math.rad(90)), 0.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.2)
		LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.73, -1, 0) * CFrame.Angles(math.rad(-25), math.rad(-66), math.rad(-25)), 0.1)
		RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-83), math.rad(0)), 0.1)
	end
	Torso.Anchored = false
	game:GetService("Debris"):AddItem(beam, 0.1)
	game:GetService("Debris"):AddItem(beam1, 0.1)
	attack = false
	thing:Destroy()
end
mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 and df == false then
		attacktype = 2
		attackone()
	elseif attack == false and attacktype == 2 and df == false then
		attacktype = 3
		attacktwo()
	elseif attack == false and attacktype == 3 and df == false then
		attacktype = 1
		attackthree()
	elseif attack == false and attacktype == 4 and df == false then
		attacktype = 1
		--attackfour()
	elseif attack == false and attacktype2 == 1 and df == true then
		attacktype = 1
		Sphere1()
	end
end)
mouse.Button1Up:connect(function()
	if attack == true and df == true then
		magic = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "f" and attack == false and evadecooldown == false then
		Fdash()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "g" and attack == false and evadecooldown == false then
		Adash()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "e" and attack == false and evadecooldown == false then
		Ldash()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "r" and attack == false and evadecooldown == false then
		Rdash()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "q" and attack == false and df == false then
		Fkickcombo()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "t" and attack == false then
		Bdash()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "y" and attack == false and df == false then
		Magicform()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "u" and attack == false and df == true then
		Magicrevert()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "l" and attack == false and df == true then
		laser()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "h" and attack == false and df == true then
		Sphere2()
	end
end)
mouse.KeyDown:connect(function(key)
	if string.byte(key) == 32 then
		local lastwall
		local ray = Ray.new(Torso.CFrame.p, Torso.CFrame.lookVector * 2)
		local hit, position, normal = workspace:FindPartOnRay(ray, Character)
		if hit and hit ~= lastwall then
			local velo = Instance.new("BodyVelocity", Torso)
			velo.MaxForce = Vector3.new(400000, 400000, 400000)
			velo.Velocity = -Torso.CFrame.lookVector * 20 + Vector3.new(0, 16, 0)
			game.Debris:AddItem(velo, 0.1)
			lastwall = hit
			wait(0.4)
			lastwall = nil
		end
	end
end)
for _, v in next, game:service("Players").localPlayer.Character:GetDescendants() do
	if v:IsA("BasePart") then
		local BF = Instance.new("BodyForce", v)
		BF.force = Vector3.new(0, workspace.Gravity * v:GetMass() / 1.121, 0)
	end
end
mouse.KeyDown:connect(function(key)
	if string.byte(key) == 48 then
		Swing = 2
		if df == true then
			Character.Humanoid.WalkSpeed = 38.82
		end
		if df == false then
			Character.Humanoid.WalkSpeed = 28.82
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if string.byte(key) == 48 then
		Swing = 1
		Character.Humanoid.WalkSpeed = 8
	end
end)
Humanoid.JumpPower = 43.3
Character.Humanoid.WalkSpeed = 8
while true do
	swait()
	sine = sine + change
	local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = RootPart.Velocity.y
	hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
	if attack == true or attack == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if not (idle >= 500) or attack == false then
		end
		if RootPart.Velocity.y > 1 and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				change = 1
				Humanoid.CameraOffset = Vector3.new(0, 0, 0)
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, -0.15) * CFrame.Angles(math.rad(-13), math.rad(0), math.rad(0)), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-30 + 2.05 * math.cos(sine / 5)), math.rad(0), math.rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30 + 2.05 * math.cos(sine / 5)), math.rad(0), math.rad(50 - 2.05 * math.cos(sine / 5))), 0.1)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 + 2.05 * math.cos(sine / 5)), math.rad(0), math.rad(-50 + 2.05 * math.cos(sine / 5))), 0.1)
			end
			if attack == false then
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-25 + 3.05 * math.cos(sine / 5)), math.rad(0), math.rad(0)), 0.1)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -0.47, -0.7) * CFrame.Angles(math.rad(-12 + 3.05 * math.cos(sine / 5)), math.rad(-3), math.rad(0)), 0.1)
			end
		elseif RootPart.Velocity.y < -1 and hitfloor == nil then
			Anim = "Fall"
			change = 1
			if attack == false then
				Humanoid.CameraOffset = Vector3.new(0, 0, 0)
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1, 0.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.1)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(20), math.rad(90)), 0.1)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(-20), math.rad(-90)), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(40), math.rad(0), math.rad(0)), 0.1)
			end
			if attack == false or attack == true then
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), math.rad(3), math.rad(0)), 0.1)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -0.67, -0.4) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(0)), 0.1)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1.54
			if attack == false and equip == false then
				Humanoid.CameraOffset = Vector3.new(0, 0, 0)
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 40), 0) * CFrame.Angles(math.rad(0), math.rad(-43), math.rad(0)), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(7 + 5 * math.sin(sine / 40)), math.rad(-4), math.rad(43)), 0.1)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.07 * math.sin(sine / 40), 0) * angles(math.rad(-13), math.rad(0 + 7 * math.cos(sine / 40)), math.rad(14 + 3.2 * math.cos(sine / 40))), 0.1)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.07 * math.sin(sine / 40), 0) * angles(math.rad(-3), math.rad(0 - 7 * math.cos(sine / 40)), math.rad(-14 - 3.2 * math.cos(sine / 40))), 0.1)
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1.03 + 0.1 * math.cos(sine / 40), 0) * CFrame.Angles(math.rad(0), math.rad(25), math.rad(-4)), 0.1)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.1 * math.cos(sine / 40), 0) * CFrame.Angles(math.rad(-14), math.rad(-9), math.rad(7)), 0.1)
			end
		elseif torvel > 2 and torvel < 25 and hitfloor ~= nil then
			Anim = "Walk"
			change = 0.76
			if attack == false and equip == false then
				Humanoid.CameraOffset = Vector3.new(0, 0, 0)
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1 + 0.23 * math.cos(sine / 3.5), -0.3) * angles(math.rad(-7 + 3 * math.cos(sine / 3.5)), math.rad(0 + 4 * math.cos(sine / 7)), math.rad(0) + RootPart.RotVelocity.Y / 46), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0 - 6 * math.cos(sine / 3.5)), math.rad(0), math.rad(0) + RootPart.RotVelocity.Y / 13), 0.1)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0 + 0.34 * math.sin(sine / 7)) * angles(math.rad(0 - 44 * math.sin(sine / 7)) + RootPart.RotVelocity.Y / -34, math.rad(0), math.rad(5 + 14 * math.sin(sine / 7)) - RootPart.RotVelocity.Y / 34), 0.1)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0 - 0.34 * math.sin(sine / 7)) * angles(math.rad(0 + 44 * math.sin(sine / 7)) + RootPart.RotVelocity.Y / 34, math.rad(0), math.rad(-5 + 14 * math.sin(sine / 7)) + RootPart.RotVelocity.Y / -34), 0.1)
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1 - 0.22 * math.cos(sine / 7), 0 + 0.22 * math.sin(sine / 7)) * CFrame.Angles(math.rad(0 - 65 * math.sin(sine / 7)), math.rad(3), math.rad(0)), 0.1)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.22 * math.cos(sine / 7), 0 - 0.22 * math.sin(sine / 7)) * CFrame.Angles(math.rad(0 + 65 * math.sin(sine / 7)), math.rad(-3), math.rad(0)), 0.1)
			end
			if attack == true and noleg == false then
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1 - 0.12 * math.cos(sine / 18), 0 + 0.22 * math.sin(sine / 18)) * CFrame.Angles(math.rad(0 - 30 * math.sin(sine / 18)), math.rad(3), math.rad(0)), 0.1)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.12 * math.cos(sine / 18), 0 - 0.22 * math.sin(sine / 18)) * CFrame.Angles(math.rad(0 + 30 * math.sin(sine / 18)), math.rad(-3), math.rad(0)), 0.1)
			end
		elseif torvel >= 25 and hitfloor ~= nil then
			Anim = "Run"
			if df == false then
				change = 1
			end
			if df == true then
				change = 1.35
			end
			if attack == false and equip == false then
				Humanoid.CameraOffset = Vector3.new(0, 0, 0)
				Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, -1 - 0.42 * math.cos(sine / 2.5), -0.8) * angles(math.rad(-27), math.rad(0), math.rad(0) + RootPart.RotVelocity.Y / 26), 0.1)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-13 + 20 * math.sin(sine / 2.5)), math.rad(0), math.rad(0 + 5 * math.sin(sine / 5)) + RootPart.RotVelocity.Y / 13), 0.1)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0 + 0.34 * math.sin(sine / 5)) * angles(math.rad(0 - 80 * math.sin(sine / 5)), math.rad(0), math.rad(10 + 18 * math.sin(sine / 5))), 0.15)
				LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0 - 0.34 * math.sin(sine / 5)) * angles(math.rad(0 + 80 * math.sin(sine / 5)), math.rad(0), math.rad(-10 + 18 * math.sin(sine / 5))), 0.15)
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1 - 0.24 * math.cos(sine / 5), 0 + 0.32 * math.sin(sine / 5)) * CFrame.Angles(math.rad(0 - 85 * math.sin(sine / 5)), math.rad(3), math.rad(0)), 0.2)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.24 * math.cos(sine / 5), 0 - 0.32 * math.sin(sine / 5)) * CFrame.Angles(math.rad(0 + 85 * math.sin(sine / 5)), math.rad(-3), math.rad(0)), 0.2)
			end
			if attack == true and noleg == false then
				LeftLeg.Weld.C0 = clerp(LeftLeg.Weld.C0, CFrame.new(-0.5, -1 - 0.24 * math.cos(sine / 5), 0 + 0.32 * math.sin(sine / 5)) * CFrame.Angles(math.rad(0 - 65 * math.sin(sine / 5)), math.rad(3), math.rad(0)), 0.2)
				RightLeg.Weld.C0 = clerp(RightLeg.Weld.C0, CFrame.new(0.5, -1 + 0.24 * math.cos(sine / 5), 0 - 0.32 * math.sin(sine / 5)) * CFrame.Angles(math.rad(0 + 65 * math.sin(sine / 5)), math.rad(-3), math.rad(0)), 0.2)
			end
		end
	end
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local move = 30
						if Thing[8] == 3 then
							move = 10
						end
						local hit, pos = rayCast(Thing[4], Thing[1], move, m)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects.Head.Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
						if Thing[8] == 2 then
							Effects.Ring.Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
						end
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							if Thing[8] == 1 or Thing[8] == 3 then
								Damagefunc(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
							elseif Thing[8] == 2 then
								Damagefunc(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
								if hit.Parent:findFirstChild("Humanoid") ~= nil or hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
									ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
									ref.Anchored = true
									ref.CFrame = CFrame.new(pos)
									CFuncs.Sound.Create("161006093", ref, 1, 1.2)
									game:GetService("Debris"):AddItem(ref, 0.2)
									Effects.Block.Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
									Effects.Ring.Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
									--MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
								end
							end
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects.Sphere.Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					if Thing[2] == "FireWave" then
						if Thing[3] <= Thing[4] then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
							Thing[3] = Thing[3] + 1
							Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
						else
							Part.Parent = nil
							table.remove(Effects, e)
						end
					end
					if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
						if Thing[1].Transparency <= 1 then
							if Thing[2] == "Block1" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block2" then
								Thing[1].CFrame = Thing[1].CFrame
								Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Fire" then
								Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Cylinder" then
								Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Blood" then
								Mesh = Thing[7]
								Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Elec" then
								Mesh = Thing[10]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Disappear" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Shatter" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
								Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
								Thing[6] = Thing[6] + Thing[5]
							end
						else
							Part.Parent = nil
							table.remove(Effects, e)
						end
					end
				end
			end
		end
	end
end