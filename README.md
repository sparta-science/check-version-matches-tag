# check-version-matches-tag
checks that the plist version matches the latest tag

Use in workflow that is triggered by git tag to create Github release

    - uses: sparta-science/check-version-matches-tag@v1
      with:
        plist-path: MyApp/Info.plist
