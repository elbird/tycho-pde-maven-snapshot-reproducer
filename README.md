# Steps to reproduce

1. Make sure you are on the `main` branch
2. Run `./build.sh` to build both the snapshot-dep maven dependency and the tycho-build. 
3. In the first run the maven build should be successful
4. Checkout the `new-feature` branch
5. Run `./build.sh` again

Result: the tycho build fails wiht a `Compilation failure` "The import com.evolit.tycho.shared.constants.SomeValues.NEW_VALUE cannot be resolved"

# Workaround: Clean Cached osgi bundle manually

1. remove directory: `~/.m2/repository/p2/osgi/bundle/com.evolit.tycho.snapshot-dep`
2. run `./build.sh` again

Result: the build finished successful
