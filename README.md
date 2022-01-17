<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This is take home coding assignment to build a command line game for rock, paper and scissors.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [ruby](https://www.ruby-lang.org/en/)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Installation

1. Clone the repo
   ```sh
   $ git clone https://github.com/cokenol/dev-asmt-rock-paper-scissors.git
   ```
2. Install rbenv (For Ubuntu and using zsh commands)

    First, we need to clean up any previous Ruby installation you might have:

    ```bash
    rvm implode && sudo rm -rf ~/.rvm
    # If you got "zsh: command not found: rvm", carry on.
    # It means `rvm` is not on your computer, that's what we want!
    rm -rf ~/.rbenv
    ```

    Then in the terminal, run:

    ```bash
    sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
    ```

    ```bash
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    ```

    ```bash
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    exec zsh
    ```
 3. Installing Ruby

    Run this command, it will **take a while (5-10 minutes)**

    ```bash
    rbenv install 3.0.3
    ```
    **Reset** your terminal and check your Ruby version:

    ```bash
    exec zsh
    ```

    Then run:

    ```bash
    ruby -v
    ```

    :heavy_check_mark: If you see something starting with `ruby 3.0.3p` then you can proceed +1

 4. Installing some gems

    In the ruby world, we call external libraries `gems`: they are pieces of ruby code that you can download and execute on your computer. Let's install some!

    In your terminal, copy-paste the following command:

    ```bash
    gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http 'rails:~>6.1'
    ```

    :heavy_check_mark: If you get `xx gems installed`, then all good :+1

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- Execution Instructions -->
## Execution Instructions
# Test
1. ``` rspec ``` in the terminal to run the tests written and its results

# Run the game
1. ```ruby lib/interface.rb``` in the terminal to start the command line game



<p align="right">(<a href="#top">back to top</a>)</p>
