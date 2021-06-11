# quack!

Learning to use GitHub gh-pages and actions, the only way... 

My steps so far:

1. I created the main repository, and added some content. Basically
    - a `.gitignore` file
    - a simple `Makefile` to build and clean a LaTeX file in `.doc/`

2. I activated an action here --- the fist step is basically to compile
the LaTeX file. I used *new action* -> build your own and 
[edited it so that](https://github.com/Rmano/quack/blob/452b1eb5f9c8403643445ccb8ebaa24fe3365a15/.github/workflows/main.yml) it runs on pushed for the `main` branch. 

3. I want to create the page from a blank `gh-pages` branch. I failed to find info on GitHub help, but it seems that this [blog entry form Jia Fu Low](https://jiafulow.github.io/blog/2020/07/09/create-gh-pages-branch-in-existing-repo/) is the solution. Basically I did, after adjusting `.gitignore` to have a fully clean status:

        git checkout --orphan gh-pages
        git reset --hard
        
    check that nothing is in your root; I added a .gitignore for this now
        
        git add .gitignore
        git commit -m "Set-up gh-pages orphan branch"
        git push origin gh-pages

4. Went to Settings -> Pages and the page was already on (!); I choosed a theme (minimal).

5. To keep also `gh-pages` in sync, I did (hope it's ok)

        git branch --set-upstream-to origin/gh-pagetmp

6. Try to apply [Deploy to GitHub pages](https://github.com/marketplace/actions/deploy-to-github-pages)
    - in the first test it wiped out my `gh-pages` branch...
    - it needs a `clean: false`!
    
7. Changing names to actions and try to add an action for PR.
    - works ok, now I have one action that deploys (on pushes to main) and another one that just checks (on PRs)
    - if you add `[skip ci]` in the commit or merge title it will... skip actions.



