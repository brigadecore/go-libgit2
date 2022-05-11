> ⚠️&nbsp;&nbsp;__This repository is archived because Brigade and related
> projects are not currently making use of the image built from the source in
> the this repository__.

# Brigade Go + libgit2 Image

![build](https://badgr.brigade2.io/v1/github/checks/brigadecore/go-libgit2/badge.svg?appID=99005)
[![slack](https://img.shields.io/badge/slack-brigade-brightgreen.svg?logo=slack)](https://kubernetes.slack.com/messages/C87MF1RFD)

This project layers [libgit2](https://libgit2.org/), built from source, on top
of our standard [go-tools](https://github.com/brigadecore/go-tools) image.

[Brigade's](https://github.com/brigadecore/brigade) Git Initializer component,
(via [git2go](https://github.com/libgit2/git2go)) depends on libgit2, and
because we build it from source, using _this_ image as a starting point (rather
than the standard go-tools image) shaves a considerable amount of time off of
the Git Initializer's build.

## Contributing

The Brigade project accepts contributions via GitHub pull requests. The
[Contributing](CONTRIBUTING.md) document outlines the process to help get your
contribution accepted.

## Support & Feedback

We have a slack channel!
[Kubernetes/#brigade](https://kubernetes.slack.com/messages/C87MF1RFD) Feel free
to join for any support questions or feedback, we are happy to help. To report
an issue or to request a feature open an issue
[here](https://github.com/brigadecore/go-libgit2/issues).

## Code of Conduct

Participation in the Brigade project is governed by the
[CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md).
