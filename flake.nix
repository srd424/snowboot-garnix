{
  description = "A very basic flake";

  inputs = {
    snowboot.url = "git+https://git.mbosch.me/linus/snowboot.git";
  };

  outputs = { self, snowboot }: {

    packages.x86_64-linux.snowboot =
      snowboot.packages.x86_64-linux.package;

    packages.x86_64-linux.default = self.packages.x86_64-linux.snowboot;

  };
}

# vim: set ts=2 sw=2 et sta:
