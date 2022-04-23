FROM swift:5.6-focal

# First just resolve dependencies.
# This creates a cached layer that can be reused
# as long as your Package.swift/Package.resolved
# files do not change.
COPY ./Package.* ./
RUN swift package resolve

# Copy entire repo into container
COPY . .

# Build everything, with optimizations
RUN swift build -c release --static-swift-stdlib

# Copy main executable to root
RUN cp "$(swift build -c release --show-bin-path)/Run" /Run

RUN ls -a

ENTRYPOINT ["/Run"]