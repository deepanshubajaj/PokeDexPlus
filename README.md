# PokeDexPlus

<h1 align="center">PokéDex+ - iOS App</h1>

<p align="center"><img src="ProjectOutputs/Snapshots/pokedex.png" width="20%"></p>

> The Pokédex (ポケモン図鑑ずかん, Pokemon Zukan, Illustrated Pokémon Encyclopedia) is an electronic device created and designed to catalog and provide information regarding the various species of Pokémon featured in the Pokémon video game, anime and manga series. The name Pokédex is a neologism including "Pokémon" (which itself is a portmanteau of "pocket" and "monster") and "index". The Japanese name is simply "Pokémon Encyclopedia", as it can feature every Pokémon on it, depending on the Pokédex. - <a href="https://pokemon.fandom.com/wiki/Pok%C3%A9dex" target="_blank">Pokemon Fandom Wiki</a>

**PokéDex+** is a feature-packed Pokémon app that brings your favorite Pokémon to life with a sleek, user-friendly interface. It fetches data from the **PokéDex API** and displays a comprehensive list of Pokémon, their stats, and their most common items. With unique features like compositional layout, async image downloading, infinite scrolling, and more, PokéDex+ is built to deliver a polished user experience. The app is structured using the **RIB+VVM architecture**, an enhanced interpretation of the popular RIB architecture by Uber.

## Features:

- **Compositional Layout**: Beautiful grid and table views powered by compositional layouts for smooth scrolling and flexible UI.
- **Async Image Downloading and Caching**: Images of Pokémon are downloaded asynchronously with caching to provide faster access.
- **Network Capabilities using Combine**: Fetch Pokémon data efficiently with Combine for network requests.
- **Custom Navigation Bar & TabBar**: Custom navigation and tab bars for smooth and intuitive user experience.
- **Custom View Transitions**: Custom transitions between views to enhance the UI flow.
- **RIB+VVM Architecture**: The app follows the **RIB+VVM architecture** (Router, Interactor, Builder + View, ViewModel), designed for maintainable and scalable code.
- **Infinite Scrolling**: Seamlessly browse through Pokémon with infinite scrolling.
- **Custom Fonts**: Designed with custom fonts to create a unique look and feel.
- **Dominant Color Detection**: Each Pokémon's sprite is analyzed to display its most dominant color in the UI.
- **Most Common Items**: Shows a list of the most common items associated with Pokémon.

## Installation:

To run this project locally:

1. Clone the repository:
    ```bash
    git clone https://github.com/deepanshubajaj/PokeDexPlus.git
    ```

2. Open the project in Xcode:
    ```bash
    open SwiftPokedex.xcodeproj
    ```

3. Build and run the app on a simulator or physical device.

> Make sure you have Xcode installed and configured properly to run the project.

## API Reference:

<img src="ProjectOutputs/Snapshots/pokeapi.png" align="right" width="21%"/>

Pokedex using the [PokeAPI](https://pokeapi.co/) for constructing RESTful API.<br>
PokeAPI provides a RESTful API interface to highly detailed objects built from thousands of lines of data related to Pokémon.

## App Look:

<p align="center">
  <img src="ProjectOutputs/Snapshots/appLook.jpeg" alt="App Look" width="30%" />
</p>
<p align="center">
  *App snapshot in the simulator.*
</p>

## Screenshots:

<p align="center">
  <img src="ProjectOutputs/Snapshots/SScreen1.jpg" alt="Splash Screen 1" width="30%" />
  <img src="ProjectOutputs/Snapshots/SScreen2.jpg" alt="Splash Screen 2" width="30%" />
</p>

<p align="center">
  *Splash screen displayed upon app launch.*
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen1.jpg" alt="Main Screen 1" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen2.jpg" alt="Main Screen 2" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen3.jpg" alt="Main Screen 3" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen4.jpg" alt="Main Screen 4" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen5.jpg" alt="Main Screen 5" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen6.jpg" alt="Main Screen 6" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen7.jpg" alt="Main Screen 7" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen8.jpg" alt="Main Screen 8" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen9.jpg" alt="Main Screen 9" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen8.jpg" alt="Main Screen 8" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen9.jpg" alt="Main Screen 9" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen10.jpg" alt="Main Screen 10" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen11.jpg" alt="Main Screen 11" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen12.jpg" alt="Main Screen 12" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen13.jpg" alt="Main Screen 13" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen14.jpg" alt="Main Screen 14" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen15.jpg" alt="Main Screen 15" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen16.jpg" alt="Main Screen 16" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen17.jpg" alt="Main Screen 17" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen18.jpg" alt="Main Screen 18" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen19.jpg" alt="Main Screen 19" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen20.jpg" alt="Main Screen 20" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen21.jpg" alt="Main Screen 21" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen22.jpg" alt="Main Screen 22" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen23.jpg" alt="Main Screen 23" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen24.jpg" alt="Main Screen 24" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen25.jpg" alt="Main Screen 25" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen26.jpg" alt="Main Screen 26" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen27.jpg" alt="Main Screen 27" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen28.jpg" alt="Main Screen 28" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen29.jpg" alt="Main Screen 29" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen30.jpg" alt="Main Screen 30" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen31.jpg" alt="Main Screen 31" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen32.jpg" alt="Main Screen 32" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen33.jpg" alt="Main Screen 33" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen34.jpg" alt="Main Screen 34" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen35.jpg" alt="Main Screen 35" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen36.jpg" alt="Main Screen 36" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen37.jpg" alt="Main Screen 37" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen38.jpg" alt="Main Screen 38" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen39.jpg" alt="Main Screen 39" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen40.jpg" alt="Main Screen 40" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen41.jpg" alt="Main Screen 41" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen42.jpg" alt="Main Screen 42" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen43.jpg" alt="Main Screen 43" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen44.jpg" alt="Main Screen 44" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen45.jpg" alt="Main Screen 45" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen46.jpg" alt="Main Screen 46" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen47.jpg" alt="Main Screen 47" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen48.jpg" alt="Main Screen 48" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen49.jpg" alt="Main Screen 49" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen50.jpg" alt="Main Screen 50" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen51.jpg" alt="Main Screen 51" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen52.jpg" alt="Main Screen 52" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen53.jpg" alt="Main Screen 53" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen54.jpg" alt="Main Screen 54" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen55.jpg" alt="Main Screen 55" width="30%" />
  </div>
</p>

<p align="center">
  <div style="display: flex; justify-content: center; gap: 10px;">
    <img src="ProjectOutputs/Snapshots/mainScreen56.jpg" alt="Main Screen 56" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen51.jpg" alt="Main Screen 57" width="30%" />
    <img src="ProjectOutputs/Snapshots/mainScreen52.jpg" alt="Main Screen 58" width="30%" />
  </div>
</p>

<p align="center">
  *Screenshots of the PokéDex+ app showing different screens*
</p>

## App Icon:

<p align="center">
  <img src="ProjectOutputs/Snapshots/appIcon.png" alt="App Icon" width="30%" />
</p>
<p align="center">
  *The app icon reflects the PokéDex+ look*
</p>

## Video Demo:

Here’s a short video showcasing the app's functionality:

<p align="center">
  <img src="ProjectOutputs/WorkingVideo/workingVideo.gif" alt="Working App" width="30%" />
</p>

[Watch Splash Screen Video](ProjectOutputs/WorkingVideo/splashScreen.mp4)
[Watch Working Video](ProjectOutputs/WorkingVideo/workingVideo.MP4)
