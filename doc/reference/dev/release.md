# The Gerbil Release Process

Congratulations, you are now a Gerbil maintainer,
tasked with making a new release.
Here is a checklist of all the steps you have to go through
to make a successful release.

## Get All the Changes Merged
First, make sure your have all the features and bug fixes in that you need to be.
Check the [PR queue](https://github.com/mighty-gerbils/gerbil/pulls) and the
[Open Issues](https://github.com/mighty-gerbils/gerbil/issues) for any release blocker.

## Regenerate the Bootstrap If Needed
If there were any changes to the core language, [regenerate the bootstrap code](bootstrap).
Include all the parts that have changed (runtime, prelude, expander, compiler).
Make a dedicated PR just for this bootstrap upgrade.

## Make Sure Gerbil Works on all Supported Targets
Before you commit the above PR, build and test it at least on the following targets:
Linux x86-64, macOS ARM64.
[Ask for help on gitter](https://app.element.io/#/room/#gerbil-scheme_community:gitter.im)
regarding platforms you can't support yourself.

## Prepare a PR for the Release
- Update the version everywhere in documentation
- Update the version everywhere in in-repo release scripts (homebrew, guix)
- Generate a `src/gerbil/runtime/version.ss` for the release
- Temporarily remove `src/gerbil/runtime/version.ss` from the `.gitignore`
- **TODO: tweak the build scripts so they work better without `git`?**
- **TODO: also handle generation of Gambit version in `src/gambit/include/stamp.h` or some such?**
- Include a summary of changes in the PR. **TODO: in the commit message? in a file?**
- Check that the release scripts work on macOS, etc.
Note that the website will be automatically re-generated from the PR.

## Create Official Announcements
Once the release PR is merged:
- Create a release announcement on
  [GitHub discussions](https://github.com/mighty-gerbils/gerbil/discussions),
  with a `release` label.
- Create a release on GitHub. **TODO: what URL? what other details?**
- GitHub will automatically generate a template summarizing the PRs included / bugs fixed.
  Use that as the basis for the GitHub release note page.

## Update Tarballs
- Generate tarball for the source code, including Gambit module
- Generate binary tarball for Linux x86-64.
  **TODO: include .so's for sqlite, etc.? in a separate tarbal?**
- Publish the tarballs as artifacts on GitHub. **TODO: page URL?**

## Update Other Build Recipes
- Update Homebrew (macOS) — ask @drewc for help
- Update Nixpkgs (Linux, macOS) - ask @fare for help
- Update Guix (Linux) — ask @drewc for help

## Clean up PR after the Release
Assuming the release happened on the `master` branch, undo it:
- Remove the `src/gerbil/runtime/version.ss`
- Add it back to `.gitignore`

## Announce the Release to the World
Point to the announcement page on GitHub.
- Announce on [twitter](https://twitter.com)
- Announce on reddit. **TODO: what subreddits?**
