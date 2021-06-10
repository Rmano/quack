# quack!

Learning to use GitHub gh-pages and actions, the only way... 

My steps so far:

1. I created the main repository, and added some content. Basically
    - a `.gitignore` file
    - a simple `Makefile` to build and clean a LaTeX file in `.doc/`

2. I activated an action here --- the fist step is basically to compile
the LaTeX file. I used *new action* -> build your own and 
[edited it so that](https://github.com/Rmano/quack/blob/452b1eb5f9c8403643445ccb8ebaa24fe3365a15/.github/workflows/main.yml) it runs on pushed for the `main` branch. 



