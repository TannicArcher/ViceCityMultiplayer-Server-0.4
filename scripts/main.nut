
// =========================================== S E R V E R   E V E N T S ==============================================

/*
function onServerStart()
{
}

function onServerStop()
{
}
*/

function onScriptLoad()
{
CreateObject(6004,1,Vector(214.623, -664.008, 13.1426),255).RotateToEuler(Vector(0, 0, 1.45),1)
CreateObject(6000,1,Vector(-333.577, -768.451, 27.7217),255).RotateToEuler(Vector(0, 0, 0),1)
CreateObject( 334, 1, Vector( -290.231, -561.496, 11.7968), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 2000, 1, Vector( -896.309, -340.721, 17.6499), 255 ).RotateByEuler( Vector( 3.11159, -3.14159, -1.41841), 0);
CreateObject( 2100, 1, Vector( -800.62, -341.014, 11.2034), 255 ).RotateByEuler( Vector( -1.3137e-10, 1.8543e-09, -0.14), 0);
CreateObject( 673, 1, Vector( -1038.42, -727.387, 33.773), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 670, 1, Vector( -979.195, -794.94, 78.1), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 676, 1, Vector( -625.421, -1094.34, 13.2412), 255 ).RotateByEuler( Vector( -0.3, 0, 0), 0);
CreateObject( 681, 1, Vector( -754.698, -1130.12, 12.3713), 255 ).RotateByEuler( Vector( 0, 0, 0.14), 0);
CreateObject( 681, 1, Vector( -760.399, -1110.77, 12.3713), 255 ).RotateByEuler( Vector( 0, 0, 0.21), 0);
CreateObject( 688, 1, Vector( -749.586, -1156.17, 14.1281), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 689, 1, Vector( -742.143, -1181.23, 12.2115), 255 ).RotateByEuler( Vector( 3.14159, 3.14159, -0.975222), 0);
CreateObject( 720, 1, Vector( -709.125, -1403.75, 14.6838), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 522, 1, Vector( -815.354, -336.724, 10.5212), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 522, 1, Vector( -822.744, -336.104, 10.5212), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 525, 1, Vector( -812.806, -341.793, 12.2712), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 525, 1, Vector( -812.859, -353.849, 12.3212), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 559, 1, Vector( -817.46, -366.539, 10.1712), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 559, 1, Vector( -821.549, -366.386, 10.4712), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 561, 1, Vector( -814.757, -329.896, 11.0712), 255 ).RotateByEuler( Vector( -0, -0, -1.48318), 0);
CreateObject( 577, 1, Vector( -826.801, -335.991, 11.6712), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 580, 1, Vector( -887.317, -345.641, 10.9258), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 580, 1, Vector( -887.036, -336.131, 10.7658), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 606, 1, Vector( -820.988, -401.646, 15.8729), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 942, 1, Vector( -836.904, -918.386, 12.2034), 255 ).RotateByEuler( Vector( 0, 0, 0.53), 0);
CreateObject( 1126, 1, Vector( -791.269, -979.123, 13.9099), 255 ).RotateByEuler( Vector( 0, 0, 0), 0);
CreateObject( 1333, 1, Vector( -834.887, -906.226, 21.4702), 255 ).RotateByEuler( Vector( 0, 0, 1.56001), 0);
CreateObject( 1722, 1, Vector( -839.873, -897.777, 11.0136), 255 ).RotateByEuler( Vector( 0, -0.03, 0), 0);
}
L <- BindKey(true, 0x4C, 0, 0);
print( "BindKey Loaded." )
{
}

function onScriptUnload()
{
}

// =========================================== P L A Y E R   E V E N T S ==============================================

function onPlayerJoin( player )
{
}

function onPlayerPart( player, reason )
{
}

function onPlayerRequestClass( player, classID, team, skin )
{
	return 1;
}

function onPlayerRequestSpawn( player )
{
	return 1;
}

function onPlayerSpawn( player )
{
}

function onPlayerDeath( player, reason )
{
}

function onPlayerKill( player, killer, reason, bodypart )
{
}

function onPlayerTeamKill( player, killer, reason, bodypart )
{
}

function onPlayerChat( player, text )
{
	print( player.Name + ": " + text );
	return 1;
}

function onPlayerCommand( player, cmd, text )
{
	if(cmd == "heal")
	{
		local hp = player.Health;
		if(hp == 100) Message("[#FF3636]Error - [#8181FF]Use this command when you have less than 100% hp !");
		else {
			player.Health = 100.0;
			MessagePlayer( "[#FFFF81]---> You have been healed !", player );
		}
	}

	else if(cmd == "goto") {
		if(!text) MessagePlayer( "Error - Correct syntax - /goto <Name/ID>' !",player );
		else {
			local plr = FindPlayer(text);
			if(!plr) MessagePlayer( "Error - Unknown player !",player);
			else {
				player.Pos = plr.Pos;
				MessagePlayer( "[ /" + cmd + " ] " + player.Name + " was sent to " + plr.Name, player );
			}
		}

	}
	else if(cmd == "bring") {
		if(!text) MessagePlayer( "Error - Correct syntax - /bring <Name/ID>' !",player );
		else {
			local plr = FindPlayer(text);
			if(!plr) MessagePlayer( "Error - Unknown player !",player);
			else {
				plr.Pos = player.Pos;
				MessagePlayer( "[ /" + cmd + " ] " + plr.Name + " was sent to " + player.Name, player );
			}
		}
	}

	/*
	else if(cmd == "exec")
	{
		if( !text ) MessagePlayer( "Error - Syntax: /exec <Squirrel code>", player);
		else
		{
			try
			{
				local script = compilestring( text );
				script();
			}
			catch(e) MessagePlayer( "Error: " + e, player);
		}
	}
    */
   else if(cmd == "a")
   {
	if(!text)
	{
	 MessagePlayer("[#6666FF]Anims' list: [#FFFF81](/a) stop, watcha, lean, talk, wave, die^, fall^, fallback^, :o, apply, bu!, arg^, carwback, wback, elbow^, rollback, boss, crawling, rollinfront, falling, roll, beware, idk, look, dumb, aim^, drown, handsup, wut, fu, phone, sit, stand, sell, hm?, onfoot, db^, heal, lay, bored, riot, dance, drunk",player);
	 MessagePlayer("[#6666FF]READ ME -> The symbol ^ means the anim has more options. Example: /a dance, /a dance 2, /a dance 3.",player);
	}
	else
	{
	 switch(text)
	 {
	  case "stop":
	   player.SetAnim(0,29);
	   break;
	  case "watcha":
	   player.SetAnim(0,7);
	   break;
	  case "lean":
	   player.SetAnim(0,9);
	   break;
	  case "talk":
	   player.SetAnim(0,11);
	   break;
	  case "wave":
	   player.SetAnim(0,12);
	   break;
	  case "die":
	   player.SetAnim(0,17);
	   break;
	  case "die 2":
	   player.SetAnim(0,13);
	   break;
	  case "fall":
	   player.SetAnim(0,25);
	   break;
	  case "fall 2":
	   player.SetAnim(0,37);
	   break;
	  case "fallback":
	   player.SetAnim(0,27);
	   break;
	  case "fallback 2":
	   player.SetAnim(0,43);
	   break;
	  case "oo":
	   player.SetAnim(0,44);
	   break;
	  case "apply":
	   player.SetAnim(0,62);
	   break;
	  case "bu!":
	   player.SetAnim(0,67);
	   break;
	  case "arg":
	   player.SetAnim(0,112);
	   break;
	  case "arg 2":
	   player.SetAnim(0,113);
	   break;
	  case "carwback":
	   player.SetAnim(0,114);
	   break;
	  case "wback":
	   player.SetAnim(0,118);
	   break;
	  case "elbow":
	   player.SetAnim(0,123);
	   break;
	  case "elbow 2":
	   player.SetAnim(0,124);
	   break;
	  case "rollback":
	   player.SetAnim(0,126);
	   break;
	  case "boss":
	   player.SetAnim(0,130);
	   break;
	  case "crawling":
	   player.SetAnim(0,133);
	   break;
	  case "rollinfront":
	   player.SetAnim(0,135);
	   break;
	  case "falling":
	   player.SetAnim(0,144);
	   break;
	  case "roll":
	   player.SetAnim(0,147);
	   break;
	  case "beware":
	   player.SetAnim(0,151);
	   break;
	  case "idk":
	   player.SetAnim(0,152);
	   break;
	  case "look":
	   player.SetAnim(0,153);
	   break;
	  case "dumb":
	   player.SetAnim(0,154);
	   break;
	  case "aim":
	   player.SetAnim(0,155);
	   break;
	  case "aim 2":
	   player.SetAnim(0,157);
	   break;
	  case "aim 3":
	   player.SetAnim(0,160);
	   break;
	  case "drown":
	   player.SetAnim(0,156);
	   break;
	  case "handsup":
	   player.SetAnim(0,161);
	   break;
	  case "wut":
	   player.SetAnim(0,162);
	   break;
	  case "fu":
	   player.SetAnim(0,163);
	   break;
	  case "phone":
	   player.SetAnim(0,166);
	   break;
	  case "sit":
	   player.SetAnim(0,169);
	   break;
	  case "stand":
	   player.SetAnim(0,168);
	   break;
	  case "sell":
	   player.SetAnim(0,171);
	   break;
	  case "hm?":
	   player.SetAnim(0,172);
	   break;
	  case "onfoot":
	   player.SetAnim(3,192);
	   break;
	  case "db":
	   player.SetAnim(3,201);
	   break;
	  case "db 2":
	   player.SetAnim(3,202);
	   break;
	  case "db 3":
	   player.SetAnim(3,203);
	   break;
	  case "heal":
	   player.SetAnim(24,214);
	   break;
	  case "lay":
	   player.SetAnim(25,210);
	   break;
	  case "bored":
	   player.SetAnim(26,215);
	   break;
	  case "bored 2":
	   player.SetAnim(26,216);
	   break;
	  case "bored 3":
	   player.SetAnim(26,217);
	   break;
	  case "bored 4":
	   player.SetAnim(26,218);
	   break;
	  case "riot":
	   player.SetAnim(27,219);
	   break;
	  case "riot 2":
	   player.SetAnim(27,220);
	   break;
	  case "riot 3":
	   player.SetAnim(27,221);
	   break;
	  case "riot 4":
	   player.SetAnim(27,222);
	   break;
	  case "riot 5":
	   player.SetAnim(27,223);
	   break;
	  case "riot 6":
	   player.SetAnim(27,224);
	   break;
	  case "riot 7":
	   player.SetAnim(27,225);
	   break;
	  case "dance":
	   player.SetAnim(28,226);
	   break;
	  case "dance 2":
	   player.SetAnim(28,227);
	   break;
	  case "dance 3":
	   player.SetAnim(28,228);
	   break;
	  case "dance 4":
	   player.SetAnim(28,229);
	   break;
	  case "dance 5":
	   player.SetAnim(28,230);
	   break;
	  case "dance 6":
	   player.SetAnim(28,231);
	   break;
	  case "dance 7":
	   player.SetAnim(28,232);
	   break;
	  case "drunk":
	   player.SetAnim(29,210);
	   break;
	  default:
	   MessagePlayer(">> [#FF3636]This animation doesn't exist. Type '/a' to see the list !",player);
	 }
	}
   }
   else if( cmd == "sethp" )
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
      if( !text )
      MessagePlayer("Use /sethp <plr> <hp>", player);
      local params = split( text, " " );
      if( params.len() < 1 ) MessagePlayer("Wrong no. of parameters.", player);
      else if( !IsNum( params[1] ) ) return MessagePlayer("HP must be an integer.", player);
      else if( params[1].tointeger() > 100 || params[1].tointeger() < 0 ) return MessagePlayer("It can't be more than 100 or less than 0.", player);
      local plr = IsNum( params[0] ) ? FindPlayer( params[0].tointeger() ) : FindPlayer( params[0] );
      if( !plr ) return MessagePlayer( "Wrong player.", player );
      else plr.Health = params[1].tointeger();
}
        else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
else if ( cmd == "settime" )
    {
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
     if ( !text ) MessagePlayer( "[#ff0000]Correct syntax : /settime <hr> <min>", player );
      else if ( split(text, " ").len() < 2) return MessagePlayer("[#ff0000]Correct syntax : /settime <hr> <min>", player )
      else
   {
   local a = split(text, " ");
      if ( !IsNum( a[0] )) MessagePlayer( "[#ffbb00]Format: /settime <hr> <min>", player );
      else if ( !IsNum( a[1] )) MessagePlayer( "[#ffbb00]Format: /settime <hr> <min>", player );
      else SetTime( a[0].tointeger(), a[1].tointeger() ) ;
      }
   }
        else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
else if ( cmd == "setweather" )
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
if ( !text ) return MessagePlayer( "[#ff0000]Usage: setweather [Weather/ID]", player );
if ( !IsNum(text) ) return MessagePlayer( "[#ff0000]Use integers/numbers", player );
SetWeather( text.tointeger() );
Message( "[#4acc0a] Admin "+ player.Name +" Set The Weather To "+GetWeatherName());
return;
}
        else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
else if (cmd == "ann")
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
	if (!text) return ClientMessage("[#FF0000][Syntax]/ann <ID> <All/Nick/ID> <Text>", player, 0, 0, 0);
	local v = split(text, " ");
	if (v.len() < 3) return ClientMessage("[#FF0000][Syntax]/ann <ID> <All/Nick/ID> <Text>", player, 0, 0, 0);
	if (v[1].tolower() == "all") AnnounceAll(text.slice(v[0].len() + v[1].len() + 2), v[0].tointeger());
	else Announce(text.slice(v[0].len() + v[1].len() + 2), FindPlayer(v[1]), v[0].tointeger());
}
	else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
else if ( cmd == "kick" )
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
	{
		if ( text )
		{
			local plr = FindPlayer( text );
			if ( plr )
			{
				KickPlayer( plr );
			}
			else MessagePlayer( "[#ff0000]Cannot find player "+text+"." , player );
		}
		else MessagePlayer( "[#ff0000]Usage: /"+cmd+" <player>" , player );
	}
	else MessagePlayer( "[#ff0000]You are not allowed to use this command." , player )
}
else if( cmd == "setarmour" )
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
      if( !text )
      MessagePlayer("Use /setarmour <plr> <hp>", player);
      local params = split( text, " " );
      if( params.len() < 1 ) MessagePlayer("Wrong no. of parameters.", player);
      else if( !IsNum( params[1] ) ) return MessagePlayer("Armour must be an integer.", player);
      else if( params[1].tointeger() > 100 || params[1].tointeger() < 0 ) return MessagePlayer("It can't be more than 100 or less than 0.", player);
      local plr = IsNum( params[0] ) ? FindPlayer( params[0].tointeger() ) : FindPlayer( params[0] );
      if( !plr ) return MessagePlayer( "Wrong player.", player );
      else plr.Armour = params[1].tointeger();
}
        else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
else if ( cmd == "freeze" )
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
if ( !text ) MessagePlayer( "Syntax, /" + cmd + " <Nick/ID> <Reason>", player );
else {
local plr = GetPlayer( GetTok( text, " ", 1 ) );
if ( !plr ) MessagePlayer( "[#FF0000]Unknown Player..", player );
else if ( plr.IsFrozen ) MessagePlayer( "[#FF0000]The Player is already Freezed", player );
else if ( !plr.IsSpawned ) MessagePlayer( "[#FF0000]The Player hasn't spawned yet..", player );
else {
local reason = GetTok( text, " ", 2, NumTok( text, " " ) );
if ( reason == null ) reason = "None"
plr.IsFrozen = true;
Message( "[#FFbb00]** Admin " + player.Name + " has Frozen " + plr.Name + " for Reason " + reason );
}
}
}
        else MessagePlayer( "[#FF0000]You're not allowed to use this command. " , player )
}
else if ( cmd == "unfreeze" )
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
if ( !text ) MessagePlayer( "[#FF0000]Syntax, /" + cmd + " <Nick/ID>", player );
else {
local plr = GetPlayer( GetTok( text, " ", 1 ) );
if ( !plr ) MessagePlayer( "[#FF0000]Unknown Player..", player );
else if ( !plr.IsFrozen ) MessagePlayer( "[#FF0000]" + plr.Name + " is not Freezed.", player);
else if ( !plr.IsSpawned ) MessagePlayer( "[#FF0000]The Player hasn't spawned yet..", player );
else {
plr.IsFrozen = false;
Message( "[#FFBB00]>> Admin " + player + " has un-freezed " + plr.Name );
}
}
}
        else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
else if (cmd == "acmds")
{
if ( player.Name == "Your Name" || player.Name == "New Name" || player.Name == "New Name #2" )   // You Must Change Them To You Admins Names
{
MessagePlayer( "(/) [#FFBB00]Admin Commands: kick, ann, settime, setweather, sethp, setarmour, freeze, unfreeze.",player);
}
        else MessagePlayer( "[#FF0000] You're not allowed to use this command. " , player )
}
if ( cmd == "flip" )
{
if ( !player.Vehicle ) MessagePlayer( "[#ff0000][ERROR] [#ffffff]You must be in car." , player )
else
{
player.Vehicle.Rotation = Quaternion( 0.0, 0.0, 0.0, 0.0 );
MessagePlayer( "[#00ff00]** [#FFFFFF]Flipped." , player )
}
}
else if ( cmd == "bank" )
{
          if ( !player.IsSpawned ) MessagePlayer( "You haven't spawned yet..", player );
            else
               {
                  player.Pos = Vector(-905.473022460938, -341.132446289063, 13.3801584243774 );
                  MessagePlayer( "[#ffbb00]*** Teleport Done To Bank Zone ***", player );
                }
         }
		 else if ( cmd == "airport" )
{
          if ( !player.IsSpawned ) PrivMessage( "You haven't spawned yet..", player );
            else
               {
                  player.Pos = Vector(-1684.91809082031, -922.396728515625, 28.6625099182129 );
                  MessagePlayer( "[#ffbb00]*** Teleport Done To The Airport ***", player );
                }
         }
		 else if ( cmd == "hotel" )
{
          if ( !player.IsSpawned ) PrivMessage( "You haven't spawned yet..", player );
            else
               {
                  player.Pos = Vector(225.674163818359, -1277.91491699219, 12.0746984481812 );
                  MessagePlayer( "[#ffbb00]*** Teleport Done To Ocean View Hotel ***", player );
                }
         }
		 else if ( cmd == "lighthouse" )
{
          if ( !player.IsSpawned ) PrivMessage( "You haven't spawned yet..", player );
            else
               {
                  player.Pos = Vector(225.674163818359, -1277.91491699219, 12.0746984481812 );
                  MessagePlayer( "[#ffbb00]*** Teleport Done To Ocean View Hotel ***", player );
                }
         }
		 else if ( cmd == "villa" )
{
          if ( !player.IsSpawned ) PrivMessage( "You haven't spawned yet..", player );
            else
               {
                  player.Pos = Vector(416.483, 655.663, 11.3 );
                  MessagePlayer( "[#ffbb00]*** Teleport Done To Villa. Enjoy! ***", player );
                }
         }
	return 1;
}
/*
for( local i = 0; i < 10000000000000000; i++ )
{
	onPlayerCommand( FindPlayer(0), "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj"
				+ "pkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpjpkfeopwfwepkfwpoekfwpegewpj", "" );
}
*/
function onPlayerPM( player, playerTo, message )
{
	return 1;
}

function onPlayerBeginTyping( player )
{
}

function onPlayerEndTyping( player )
{
}

/*
function onLoginAttempt( player )
{
	return 1;
}
*/

function onNameChangeable( player )
{
}

function onPlayerSpectate( player, target )
{
}

function onPlayerCrashDump( player, crash )
{
}

function onPlayerMove( player, lastX, lastY, lastZ, newX, newY, newZ )
{
}

function onPlayerHealthChange( player, lastHP, newHP )
{
}

function onPlayerArmourChange( player, lastArmour, newArmour )
{
}

function onPlayerWeaponChange( player, oldWep, newWep )
{
}

function onPlayerAwayChange( player, status )
{
}

function onPlayerNameChange( player, oldName, newName )
{
}

function onPlayerActionChange( player, oldAction, newAction )
{
}

function onPlayerStateChange( player, oldState, newState )
{
}

function onPlayerOnFireChange( player, IsOnFireNow )
{
}

function onPlayerCrouchChange( player, IsCrouchingNow )
{
}

function onPlayerGameKeysChange( player, oldKeys, newKeys )
{
}

function onPlayerUpdate( player, update )
{
}

function onClientScriptData( player )
{
    // receiving client data
    local stream = Stream.ReadByte();
    switch ( stream )
    {
        case StreamType.ServerName:
        {
            Message( "Server received client's request, so it's sending back the server name." );
            // server received the request of client-side, so it sends back the server name
            SendDataToClient( player, StreamType.ServerName, SRV_NAME );
        }
        break;
    }
}

// ========================================== V E H I C L E   E V E N T S =============================================

function onPlayerEnteringVehicle( player, vehicle, door )
{
	return 1;
}

function onPlayerEnterVehicle( player, vehicle, door )
{
}

function onPlayerExitVehicle( player, vehicle )
{
}

function onVehicleExplode( vehicle )
{
}

function onVehicleRespawn( vehicle )
{
}

function onVehicleHealthChange( vehicle, oldHP, newHP )
{
}

function onVehicleMove( vehicle, lastX, lastY, lastZ, newX, newY, newZ )
{
}

// =========================================== P I C K U P   E V E N T S ==============================================

function onPickupClaimPicked( player, pickup )
{
	return 1;
}

function onPickupPickedUp( player, pickup )
{
}

function onPickupRespawn( pickup )
{
}

// ========================================== O B J E C T   E V E N T S ==============================================

function onObjectShot( object, player, weapon )
{
}

function onObjectBump( object, player )
{
}

// ====================================== C H E C K P O I N T   E V E N T S ==========================================

function onCheckpointEntered( player, checkpoint )
{
}

function onCheckpointExited( player, checkpoint )
{
}

// =========================================== B I N D   E V E N T S =================================================

function onKeyDown( player, key )
{
if ( key == L )
{
if ( !player.Vehicle ) return 0;
else
{
local v = player.Vehicle;
if ( v.Lights == true )
{
v.Lights = false;
MessagePlayer( "[#00ff00][LIGHTS] [#ffffff]Vehicle lights turned off." , player )
}
else if ( v.Lights == false )
{
v.Lights = true;
MessagePlayer( "[#00ff00][LIGHTS] [#ffffff]Vehicle lights turned on." , player )
}
}
}
}

function onKeyUp( player, key )
{
}

// ================================== E N D   OF   O F F I C I A L   E V E N T S ======================================


function SendDataToClient( player, ... )
{
    if( vargv[0] )
    {
        local     byte = vargv[0],
                len = vargv.len();

        if( 1 > len ) devprint( "ToClent <" + byte + "> No params specified." );
        else
        {
            Stream.StartWrite();
            Stream.WriteByte( byte );

            for( local i = 1; i < len; i++ )
            {
                switch( typeof( vargv[i] ) )
                {
                    case "integer": Stream.WriteInt( vargv[i] ); break;
                    case "string": Stream.WriteString( vargv[i] ); break;
                    case "float": Stream.WriteFloat( vargv[i] ); break;
                }
            }

            if( player == null ) Stream.SendStream( null );
            else if( typeof( player ) == "instance" ) Stream.SendStream( player );
            else devprint( "ToClient <" + byte + "> Player is not online." );
        }
    }
    else devprint( "ToClient: Even the byte wasn't specified..." );
}
function GetPlayer( target )
{
 target = target.tostring();

 if ( IsNum( target ) )
 {
  target = target.tointeger();

  if ( FindPlayer( target ) ) return FindPlayer( target );
  else return null;
 }
 else if ( FindPlayer( target ) ) return FindPlayer( target );
 else return null;
}

function GetTok(string, separator, n, ...)
{
 local m = vargv.len() > 0 ? vargv[0] : n,
    tokenized = split(string, separator),
    text = "";

 if (n > tokenized.len() || n < 1) return null;
 for (; n <= m; n++)
 {
  text += text == "" ? tokenized[n-1] : separator + tokenized[n-1];
 }
 return text;
}

function NumTok(string, separator)
{
 local tokenized = split(string, separator);
 return tokenized.len();
}
function GetWeatherName( )
{
switch( GetWeather() )
  {
  case 0 : return "Clear Skies";
  case 1 : return "OverCast";
  case 2 : return "Rainy-Lightning";
  case 3 : return "Foggy";
  case 4 : return "Sunny";
  case 5 : return "Rainy";
  case 6 : return "Dark Sky Partly Cloudy";
  case 7 : return "Light Sky Partly Cloudy";
  case 8 : return "OverCast Partly Cloudy";
  case 9 : return "Grey Sky Black Clouds";
  case 10 : return "Fog And Gray";
  default : return "Unknown";
  }
}