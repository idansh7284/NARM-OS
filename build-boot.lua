
boot = {
	bootsector = {
		source = "boot/bootsector.asm",
		binary = "binary/boot/bootsector.bin"
	}
}


-- functions 

function nasm(input_file, output_file, type_assembler)
	print("NASM BUILD : ", input_file)
	local command = string.format("nasm -f %s %s -o %s", type_assembler, input_file, output_file)
	if os.execute(command) then
		return 0
	else
		print("====================================================")
		print("Assembler error ! ")
		print("file :", input_file)
		print("output :", output_file)
		print("====================================================")
		os.exit(1)
	end
end

function test_file(path)
	local file = io.open(path, "r")
	if file then
		file:close()
		return 0
	else
		print("This file is missing , please chek ! : ", path)
		os.exit(1)
	end
end

function build_bootsector()
	test_file(boot.bootsector.source)
	nasm(boot.bootsector.source, boot.bootsector.binary, "bin")
end


build_bootsector()
