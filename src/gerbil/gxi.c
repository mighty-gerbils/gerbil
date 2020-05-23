// gxi C shim: this is the gxi interpreter shim, which invokes gsi loading Gerbil
// gxi was originally a shell script, but we've had it with the shebang madness in the
//  various unix variants, so I wrote this.
// © vyzo
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

// these may be patched by configure/install
static char *default_gerbil_home = NULL;
static char *default_gerbil_gsi  = "gsi";

static const char *usage = "Usage: %s [-v|-h] | [-:<runtime-options>] [--lang <language>] [[-] [-e <expr>] [file]] ...\n";

void exec_gxi(char *gsi, char *gerbil_home, char *gerbil_lang, char *runtime_opts, int argc, char **argv);
void gxi_setenv(char *gerbil_home, char *gerbil_lang);
char **gxi_argv(char *gerbil_home, char *runtime_opts, int argc, char **argv);
char **gxi_argv_script(char *gerbil_home, char *runtime_opts, int argc, char **argv);
char **gxi_argv_interactive(char *gerbil_home, char *runtime_opts);

int main(int argc, char **argv) {
  // determine GERBIL_HOME
  char *gerbil_home = getenv("GERBIL_HOME");
  if (!gerbil_home) {
    gerbil_home = default_gerbil_home;
  }
  if (!gerbil_home) {
    fprintf(stderr, "Cannot determine GERBIL_HOME\n");
    return 1;
  }

  // determine GERBIL_GSI
  char *gerbil_gsi = getenv("GERBIL_GSI");
  if (!gerbil_gsi) {
    gerbil_gsi = default_gerbil_gsi;
  }

  int argp = 1;
  char *gerbil_lang = NULL;
  char *runtime_opts = NULL;
  if (argc > 1) {
    if (!strcmp(argv[1], "-h")) {
      fprintf(stdout, usage, argv[0]);
      return 0;
    }

    if (!strcmp(argv[1], "-v")) {
      char *args[] = {"-e", "(displayln gerbil-greeting)"};
      exec_gxi(gerbil_gsi, gerbil_home, NULL, NULL, 2, args);
      return 2;
    }

    if (strlen(argv[1]) > 1 && argv[1][0] == '-' && argv[1][1] == ':') {
      runtime_opts = argv[1];
      argp++;
    }

    if ((argp < argc) && !strcmp(argv[argp], "--lang")) {
      argp++;
      if (argp < argc) {
        gerbil_lang = argv[argp];
        argp++;
      } else {
        fprintf(stderr, usage, argv[0]);
        return 1;
      }
    }
  }

  exec_gxi(gerbil_gsi, gerbil_home, gerbil_lang, runtime_opts, argc - argp, argv + argp);
  return 2;
}

void exec_gxi(char *gsi,
              char *gerbil_home,
              char *gerbil_lang,
              char *runtime_opts,
              int argc, char **argv) {
  char **gsi_argv = gxi_argv(gerbil_home, runtime_opts, argc, argv);
  gxi_setenv(gerbil_home, gerbil_lang);
  execvp(gsi, gsi_argv);
  perror("execvpe");
}

void gxi_setenv(char *gerbil_home, char *gerbil_lang) {
  setenv("GERBIL_HOME", gerbil_home, 1);
  if (gerbil_lang) {
    setenv("GERBIL_LANG", gerbil_lang, 1);
  }
}

char **gxi_argv(char *gerbil_home, char *runtime_opts, int argc, char **argv) {
  if (argc > 0) {
    return gxi_argv_script(gerbil_home, runtime_opts, argc, argv);
  } else {
    return gxi_argv_interactive(gerbil_home, runtime_opts);
  }
}

char **gxi_argv_script(char* gerbil_home, char *runtime_opts, int argc, char **argv) {
  int arglen = 2 + argc;
  if (runtime_opts) {
    arglen++;
  }

  int argix = 0;

  char **gsi_argv = malloc((arglen + 1) * sizeof(char*));
  if (!gsi_argv) {
    perror("malloc");
    exit(3);
  }
  gsi_argv[arglen] = NULL;

  gsi_argv[argix++] = "gsi";

  if (runtime_opts) {
    gsi_argv[argix++] = runtime_opts;
  }

  char *gxi_init = malloc(strlen(gerbil_home) + strlen("/lib/gxi-init") + 1);
  if (!gxi_init) {
    perror("malloc");
    exit(3);
  }
  sprintf(gxi_init, "%s/lib/gxi-init", gerbil_home);
  gsi_argv[argix++] = gxi_init;

  for (int i = 0; i < argc; i++) {
    gsi_argv[argix++] = argv[i];
  }

  return gsi_argv;
}

char **gxi_argv_interactive(char *gerbil_home, char *runtime_opts) {
  int arglen = 4;
  if (runtime_opts) {
    arglen++;
  }

  int argix = 0;

  char **gsi_argv = malloc((arglen + 1) * sizeof(char*));
  if (!gsi_argv) {
    perror("malloc");
    exit(3);
  }
  gsi_argv[arglen] = NULL;

  gsi_argv[argix++] = "gsi";

  if (runtime_opts) {
    gsi_argv[argix++] = runtime_opts;
  }

  char *gxi_init = malloc(strlen(gerbil_home) + strlen("/lib/gxi-init") + 1);
  if (!gxi_init) {
    perror("malloc");
    exit(3);
  }
  sprintf(gxi_init, "%s/lib/gxi-init", gerbil_home);
  gsi_argv[argix++] = gxi_init;

  char *gxi_interactive = malloc(strlen(gerbil_home) + strlen("/lib/gxi-interactive") + 1);
  if (!gxi_interactive) {
    perror("malloc");
    exit(3);
  }
  sprintf(gxi_interactive, "%s/lib/gxi-interactive", gerbil_home);
  gsi_argv[argix++] = gxi_interactive;

  gsi_argv[argix++] = "-";

  return gsi_argv;
}
