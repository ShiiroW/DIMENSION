var file = file_text_open_write("items.gm")

for (var i = 0; i < array_length_1d(global.takenitems); i++) {
	file_text_write_real(file, global.takenitems[i]);
	file_text_writeln(file);
}