resource "local_file" "countries" {
	content = "India \n USA"
	filename = "country.txt"
}
