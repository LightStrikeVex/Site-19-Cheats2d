Execution_Runtime = tick()
PLadmin_Settings = {
  DefaultPrefix = "?"; --The default prefix for pladmin
  JoinNotify = false; --Notify when a player joins
  AutoRespawn = false; --Automatically loadcharacter when dying
  AntiVoid = true; --Automatically teleport up when falling into void
  AntiTase = false; --Prevents you from being tased (100% no getconnections used because its absolute garbage)
  AntiArrest = false; --Prevents you from being arrested (100% no getconnections used because its absolute garbage)
  AntiShoot = false; --Kills player who tries to shoot you (Will be delayed if you have shitty ping, *COUGH* PLDT Users)
  AntiPunch = false; --Instantly kill players who try to punch you
  AntiFling = true; --Prevent exploiters from flinging you
  AntiShield = false; --stop pay2win people and bypass their shields
  AntiBring = true; --Prevent other exploiter(s) from bringing you
  SilentAim = true; --Makes you shoot without missing a target
  AutoGuns = true; --Automatically get all guns
  OldItemMethod = false; --Use teleport for getting items (USE THIS IF PRISON LIFE PATCHES THE TABLE METHOD)
  Fullbright = false; --Enable fullbrightness
  WhitelistRanked = false; --Automatically whitelist ranked players (DO NOT USE WHEN RANKING ALL PLAYERS)
  RankedNukeCmds = true; --Allow ranked players to use nuke commands (Very annoying)
  RankedMultiCmd = true; --Allow ranked players to use the arguments: "all, and team", EX: ?kill all
  RankedOutput = true; --Chat the output commands of ranked players
  WhisperToRanked = true; --Use whisper for outputing commands for ranked players
};wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/Source/release_v0.8.1.lua'))()
