BEGIN { FS="," }

{
if ($17 >= 10)
	print $14
}
