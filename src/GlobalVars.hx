package;
import flash.display.Sprite;
import flash.utils.Object;

class GlobalVars extends Sprite {
	public function new() {
		super();
		var smCap:Float = textSize - 4;
		
		//Welcome message, displays one randomly when the welcome screen is shown. Most of these are from video games.
		welcomeMessage[0] = "There's always another secret"; // Mistborn
		welcomeMessage.push("You were so busy wondering if you could, you never stopped to ask if you should");
		welcomeMessage.push("A coherent, typically large body of matter");
		welcomeMessage.push("Y<font size = '" + smCap + "'>OU ARE HAVING A NEAR </font>D<font size = '" + smCap + "'>EATH EXPERIENCE, WHICH INESCAPABLY MEANS </font>I<font size = '" + smCap + "'> MUST HAVE A NEAR </font>V<font size = '" + smCap + "'>IMES EXPERIENCE. </font>D<font size = '" + smCap + "'>ON'T MIND ME. </font>C<font size = '" + smCap + "'>ARRY ON WITH WHATEVER YOU WERE DOING. </font>I<font size = '" + smCap + "'> HAVE A BOOK.</font>");
		welcomeMessage.push("S<font size = '" + smCap + "'>QUEAK</font>"); //Discworld
		welcomeMessage.push("Shepard");
		welcomeMessage.push("Wrex"); //Mass Effect
		welcomeMessage.push("Using multiple fonts in ActionScript is a pain in the ass.");
		welcomeMessage.push("Tip your driver.");
		welcomeMessage.push("Our forum is gone :C");
		welcomeMessage.push("Sufficiently advanced my ass."); //Dresden Files
		welcomeMessage.push("It's like riding a zombie T-Rex through downtown Chicago on Halloween night while polka music plays in the background.");
		welcomeMessage.push("Rule 9: Always carry a knife."); //NCIS
		welcomeMessage.push("Hidden chess moves: move two male pawns to the same square to cause all bishops on the table to throw a tantrum and leave.");
		welcomeMessage.push("When you have eliminated the possible, whatever remains, no matter how improbable, must be the truth."); //Sherlock Holems
		welcomeMessage.push("Cats were once worshiped as gods. They have not forgotten this.");
		welcomeMessage.push("I thought what I'd do was, I'd pretend I was one of those deaf-mutes.");
		welcomeMessage.push("Or should I?");//Ghost in the Shell
		welcomeMessage.push("Is it Thursday yet?");
		welcomeMessage.push("How do you want to do this?"); //Critical Role
		welcomeMessage.push("A man chooses. A slave obeys");
		welcomeMessage.push("Would you kindly..."); //Bioshock
		welcomeMessage.push("The struggle for survival is a war without end and war, war never changes."); //Fallout 3
		welcomeMessage.push("I think it's time we blow this scene, get eveybody and their stuff together, okay three, two, one. Let's jam."); 
		welcomeMessage.push("See you space cowboy..."); //Cowboy Bebop
		welcomeMessage.push("Are you still there?"); //Portal
		//This says; "There will be a secret here soon"
		welcomeMessage.push("01010100 01101000 01100101 01110010 01100101 00100000 01110111 01101001 01101100 01101100 00100000 01100010 01100101 00100000 01100001 00100000 01110011 01100101 01100011 01110010 01100101 01110100 00100000 01101000 01100101 01110010 01100101 00100000 01110011 01101111 01101111 01101110"); //There will be a secret here soon
		welcomeMessage.push("Kyra's favroite flavor is strawberry.");
		welcomeMessage.push("Now with <font size = '" + (textSize - 4) + "'>more</font> updates!");
		//This says; "Are you still translating these?"
		welcomeMessage.push("01000001 01110010 01100101 00100000 01111001 01101111 01110101 00100000 01110011 01110100 01101001 01101100 01101100 00100000 01110100 01110010 01100001 01101110 01110011 01101100 01100001 01110100 01101001 01101110 01100111 00100000 01110100 01101000 01100101 01110011 01100101 00111111");
		welcomeMessage.push("Walk down the right back alley... and you could find anything."); //Sin City
		welcomeMessage.push("Even the smallest person can change the course of the future."); //The Lord of the Rings: The Fellowship of the Ring
		welcomeMessage.push("The accumulated filth of all their sex and murder will foam up about their waists and all the whores and politicians will look up and shout 'Save us!'... And I'll look down and whisper 'no.'"); //Watchmen
		welcomeMessage.push("Kyra casts Resurrection! It failed 554 times before succeeding. Kyra fainted."); //Yes, that's how many days it was between 0.40 and 0.41
		welcomeMessage.push("Prase the Sun!"); //Dark Souls
		welcomeMessage.push("Amazing chest ahead.");
		welcomeMessage.push("Let us engage in jolly cooperation!");
		welcomeMessage.push("\\[T]/");
		welcomeMessage.push("Don't give up, skeleton!");
		welcomeMessage.push("If only I could be as gloriously incandescent.");
		welcomeMessage.push("With hookers!");
		welcomeMessage.push("And blackjack!");
		
	}
	
}