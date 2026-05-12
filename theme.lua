vim.keymap.set("n", "<leader>pl", function ()
	require("beepboop").play("runprogram")
end)

return {
	name = "mingleburb",
	sound_maps = {
		{
			trigger = "runprogram",
			keymap = {
				mode = "i",
				keychord = "<BS>"
			},
			sound = "pop.wav"
		},
		{
			autocommand = "VimEnter",
			sound = "chestopen.wav"
		},
		{
			trigger = "chestclosed",
			autocommand = "VimLeavePre",
			sound = "chestclosed.wav"
		},
		{
			autocommand = "InsertCharPre",
			sounds = {
				"stone1.wav",
				"stone2.wav",
				"stone3.wav",
				"stone4.wav"
			}
		},
		{
			autocommand = "TextYankPost",
			sounds = {
				"hit1.wav",
				"hit2.wav",
				"hit3.wav"
			},
		},
		{
			autocommand = "BufWrite",
			sounds = {
				"open_flip1.wav",
				"open_flip2.wav",
				"open_flip3.wav"
			}
		}
	}
}
