package net.darkglass.consume;

import flixel.FlxG;

class Registry
{
    //--------------------------------------------------------------------------
    // Singleton stuffs
    // -------------------------------------------------------------------------

    /**
     * Singleton instance of Registry
     */
    public static var instance(default, null):Registry = new Registry();
    
    /**
     * Private constructor for Registry
     */
    private function new()
    {
        // assemble gfxsets where I can access members
        this.gfxset_buttonEnabled  = [this.gfx_buttonNormal, this.gfx_buttonHover, this.gfx_buttonClick];
        this.gfxset_buttonDisabled = [this.gfx_buttonDisabled, this.gfx_buttonDisabled, this.gfx_buttonDisabled];
    }

    /**
     * Ostensibly creates a registry.
     * 
     * @return Registry the singleton of the registry
     */
    public static function create():Registry
    {
        return Registry.instance;
    }
    
    // -------------------------------------------------------------------------
    // New UI element paths etc
    // -------------------------------------------------------------------------

    /**
     * Normal graphics for button.
     * 
     * TODO: Load this on player preference.
     */
    public var gfx_buttonNormal:String = "assets/images/gui/classic/nineslice/window.png";

    public var gfx_buttonHover:String = "assets/images/gui/classic/nineslice/window-hover.png";

    public var gfx_buttonClick:String     = "assets/images/gui/classic/nineslice/window-click.png";

    public var gfx_buttonDisabled:String  = "assets/images/gui/classic/nineslice/window-disabled.png";

    /**
     * Graphics array for buttons that are enabled
     */
    public var gfxset_buttonEnabled:Array<String>; // assembled in constructor

    /**
     * Graphics array for buttons that are disabled
     */
    public var gfxset_buttonDisabled:Array<String>; // assembled in constructor

    // -------------------------------------------------------------------------
    // And all the rest
    // -------------------------------------------------------------------------

    /**
     * Path to male logo with text
     * 
     * TODO: Should this be broken out for localization?
     */
    public var logoMale(default, null):String = "assets/images/logo_male.png";

    /**
     * The name of the save data file stored on the player's system. Flash will append '.sol' to the file when it saves.
     * 
     * Not allowing flash to store data locally will prevent saves from being created, check if there's a way to check on that and display an error to the user
     * Saving while in Privite Browsing will cause this file to be deleted when the user closes the window. There's nothing we can do about that.
     */
    // public var gameSaveName:String = "Consume";

	//The following values are saved
	// public var debugMode:Bool = false;

	/**
	 * Whether or not user has arousal enabled.
	 */
	public var arousalEnabled:Bool = true;

	/**
	 * Whether or not user has scat enabled
	 */
	public var scatEnabled:Bool = true;

	/**
	 * Deprecated - Whether or not sex is allowed to happen. Use arousalEnabled instead!
	 */
	public var allowSex(get, set):Bool;

	 /**
	  * Deprecated - Whether or not scat is allowed to happen. Use scatEnabled instead!
	  */
	 public var allowScat(get, set):Bool;

	// public var textSize:Int = 17;
	// public var currentRoomID:Int;

	/**
	 * Combat Difficulty
	 */
	public var difficulty:Float = 1;

	//This value tells the game if the save data is going to be missing values so we don't look for them. Saves with a buldNumer lower then 11 are not compatable with this game engine at all.
	// public var buildNumber:Int = 20;
	// public var minBuildNumber:Int = 20; //If the saved build number is below this number, don't allow players to load that file. Otherwise the game will attempt to update the file
	
	// public var perkCostMultiplier:Int = 13;
	
	//Changes the number that displays in the corner of the play field
	// public var buildVersion:String = "0.53.pre";
	
	//Global vars holding temp data
	// public var backTo:String;
	// public var conversationStep:Int;
	// public var sellItem:Int;
	// public var secretPress:UInt;
	// public var lastRoom:Int = -1;
	// public var prevKey:String = "";
	
	//Arrays of data, rooms, exits, npcs and items, populated with a call to main.inilitize
	// public var welcomeMessage:Array<String> = new Array();
	// public var perks:Array<MyPerk>;
	// public var rooms:Array<Dynamic>;
	// public var exits:Array<Dynamic>;
	// public var keys:Array<Dynamic>;
	// public var food:Array<MyItem_Food>;
	// public var weapons:Array<MyItem_Weapon>;
	// public var armor:Array<MyItem_Armor>;
	// public var rings:Array<MyItem_Ring>;
	
	// public var shopLists:Array<Dynamic>;
	
	// public var gymFee:Int = 20; //Cost to use the gym, futureproofing
	
	//Player min and max values
	// public var maxHeight:Int = 120; //Max player height, in inches: 10'
	// public var minHeight:Int = 24; //Min player height, in inches: 2'
	// public var minChest:Int = 12;
	// public var maxChest:Int = 60;
	// public var minWaist:Int = 8;
	// public var maxWaist:Int = 60;
	// public var minHips:Int = 10;
	// public var maxHips:Int = 70;
	
	//Blackjack
	// public var betAmount:Float = 0; //Blackjack bet amount
	// public var betTarget:String = ""; //Blackjack bet target
	
    // -------------------------------------------------------------------------
    // Random NPC properties
    // -------------------------------------------------------------------------

    /**
     * deprecated! use breastsEnabled instead!
     */
    public var allowBreasts(get, set):Bool;

    /**
     * Whether or not random NPCs can have breasts
     */
    public var breastsEnabled:Bool = true;

    function set_allowBreasts(newState:Bool)
    {
        FlxG.log.warn("Call made to set_allowBreasts!");
        return this.breastsEnabled = newState;
    }

    function get_allowBreasts()
    {
        FlxG.log.warn("Call made to get_allowBreasts!");
        return this.breastsEnabled;
    }

    /**
     * Deprecated! Use vaginaEnabled instead!
     */
    public var allowVagina(get, set):Bool;

    /**
     * Whether or not random NPCs can have a vagina.
     */
    public var vaginaEnabled:Bool = true;

    function set_allowVagina(newState:Bool)
    {
        FlxG.log.warn("Call made to set_allowVagina!");
        return this.vaginaEnabled = newState;
    }

    function get_allowVagina()
    {
        FlxG.log.warn("Call made to get_allowVagina!");
        return this.vaginaEnabled;
    }

    /**
     * Deprecated! Use penisEnabled instead!
     */
    public var allowPenis(get, set):Bool;

    /**
     * Whether or not random NPCs can have a penis. 
     */
    public var penisEnabled:Bool = true;

    function set_allowPenis(newState:Bool)
    {
        FlxG.log.warn("Call made to set_allowPenis!");
        return this.penisEnabled = newState;
    }

    function get_allowPenis()
    {
        FlxG.log.warn("Call made to get_allowPenis!");
        return this.penisEnabled;
    }

    /**
     * Deprecated! Use "ballsEnabled" instead!
     */
    public var allowBalls(get, set):Bool;

    /**
     * Whether or not random NPCs can have testicles.
     */
    public var ballsEnabled:Bool = true;

    function set_allowBalls(newState:Bool)
    {
        FlxG.log.warn("Call made to set_allowBalls!");
        return this.ballsEnabled = newState;
    }

    function get_allowBalls()
    {
        FlxG.log.warn("Call made to get_allowBalls!");
        return this.ballsEnabled;
    }

    /**
     * Whether or not random NPCs can be cuntboys.
     * 
     * Originally globals.allowedGenders[5][1]
     */
    public var cuntboyEnabled:Bool = true;

    /**
     * Whether or not random NPCs can be dickgirls.
     * 
     * Originally globals.allowedGenders[3][1]
     */
    public var dickgirlEnabled:Bool = true;

    
    /**
     * Whether or not random NPCs can be dolls.
     * 
     * Originally globals.allowedGenders[4][1]
     */
    public var dollEnabled:Bool = true;

    /**
     * Whether or not random NPCs can be females.
     * 
     * Originally globals.allowedGenders[0][1]
     */
    public var femaleEnabled:Bool = true;

    /**
     * Whether or not random NPCs can be herms.
     * 
     * Originally globals.allowedGenders[2][1]
     */
    public var hermEnabled:Bool = true;

    /**
     * Whether or not random NPCs can be males.
     * 
     * Originally globals.allowedGenders[1][1]
     */
    public var maleEnabled:Bool = true;

    /**
     * Whether or not random NPCs can be neuters.
     * 
     * Originally globals.allowedGenders[6][1]
     */
    public var neuterEnabled:Bool = true;

    // -------------------------------------------------------------------------
    // Not NPC stuff
    // -------------------------------------------------------------------------

	function set_allowSex(newState:Bool)
	{
		FlxG.log.warn("Call made to set_allowSex!");
		return this.arousalEnabled = newState;
	}

	function get_allowSex()
	{
		FlxG.log.warn("Call made to get_allowSex!");
		return this.arousalEnabled;
	}

    function set_allowScat(newState:Bool)
    {
        FlxG.log.warn("Call made to set_allowScat!");
        return this.scatEnabled = newState;
    }

    function get_allowScat()
    {
        FlxG.log.warn("Call made to get_allowScat!");
        return this.scatEnabled;
    }
}