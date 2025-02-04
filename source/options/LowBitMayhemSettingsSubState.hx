package options;

class LowBitMayhemSettingsSubState extends BaseOptionsMenu
{
	public static var stickersetoptions:Array<String> = ['Off', 'All', 'SA64', 'ShultzNG', 'FrenchOtter'];
	public function new()
	{
		title = Language.getPhrase('lbm_menu', 'Low-Bit Mayhem Settings');
		rpcTitle = 'Low-Bit Mayhem Settings Menu'; //for Discord Rich Presence

		//I'd suggest using "Downscroll" as an example for making your own option since it is the simplest here
		var option:Option = new Option('4:3 Aspect Ratio', //Name
			'If disabled, the game will remain in 16:9.', //Description
			'43ratio', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		var option:Option = new Option('Keep 4:3',
			'If enabled, it keeps the 4:3 ratio when transitioning to the full-drawn section.',
			'keep43',
			BOOL);
		addOption(option);

		var option:Option = new Option('SMB1 Health Bar Colors',
			'Changes the health bar colors in the SMB1 section of Bit-Beat',
			'smb1hbc',
			STRING,
			['Off', 'B&W', 'V-Slice', 'V-Slice NES', 'SA64']);
		addOption(option);

		var option:Option = new Option('Change Health Bar Color',
			"When disabled, the health bar remains the same when transitioning to the full-drawn section.",
			'changehbc',
			BOOL);
		addOption(option);
		
		var option:Option = new Option('Time Bar Colors',
			"Changes the time bar colors in Bit-Beat",
			'timebarc',
			STRING,
			['Off', 'SA64']);
		addOption(option);

		var option:Option = new Option('LBM Sticker Set',
			"If the LBM Sticker Set is enabled and whose stickers are used.",
			'lbm-sticker-set',
			STRING,
			stickersetoptions);
		addOption(option);

		super();
	}
}