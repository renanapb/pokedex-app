# Pokédex App

## Architecture

CLEAN Architecture [adaptation](https://developer.android.com/topic/architecture?hl=pt-br):

<img src="assets/architecture.png" alt="Diagram" width="800"/>

### Summary

- Presentation Layer
  - Component: Widgets
  - Page: Routes
  - State Holder: BLoC
- Domain Layer
  - Use Case: Shared business logic
- Data Layer
  - Clients: API, shared preferences, etc
  - DataSource: handle single client and present DTO
  - Repository: handle multiple datasource and present Domain Model

## Libraries

- State Management: [BLoC](https://bloclibrary.dev/#/whybloc)
- Dependency Injection: [provider](https://github.com/rrousselGit/provider)
- Network: [dio](https://pub.dev/packages/dio)

## References

- [Figma](https://www.figma.com/file/THLxZSlOoUYMZrjFg0Kl1M/Pok%C3%A9dex?node-id=18241%3A2789)
- [PokeApi](https://pokeapi.co/)