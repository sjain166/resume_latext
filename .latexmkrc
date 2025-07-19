# Output directory for auxiliary files
$out_dir = 'meta';

# Automatic cleanup after successful compilation
$cleanup_mode = 1;

# PDF mode
$pdf_mode = 1;

# File types to clean
@generated_exts = qw(aux bbl blg fls fdb_latexmk log out synctex.gz nav snm);

# Clean up command
$clean_ext = 'aux bbl blg fls fdb_latexmk log out synctex.gz nav snm toc lof lot';

# Continuous preview mode cleanup
$preview_continuous_mode = 1; 