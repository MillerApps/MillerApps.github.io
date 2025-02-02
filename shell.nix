# Function arguments that will be provided by callPackage
{
  mkShell, # Function to create a shell environment
  hugo, # The Hugo package itself
  git, # Hugo modules, themes, and version control
  go, # Hugo modules
  dart-sass, # transpile Sass to CSS
}:
# Create a development shell
mkShell {
  # Packages that will be available in the development environment
  packages = [
    hugo
    git
    go
    dart-sass
  ];

  # Script that runs when entering the shell
  shellHook = ''
    echo "Hugo development environment loaded!"
    echo "Hugo version: $(hugo version)"
    echo ""
    echo "Installed tools:"
    echo "- Hugo (static site generator)"
    echo "- Git (required for Hugo modules and themes)"
    echo "- Go (required for Hugo modules)"
    echo "- Dart Sass (required for Sass/SCSS processing)"
    echo ""
    echo "Common commands:"
    echo "  hugo new site [path]    # Create a new site"
    echo "  hugo serve              # Start development server"
    echo "  hugo                    # Build site"
  '';
}
