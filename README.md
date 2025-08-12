## Starting a new project for the platform

# ChaiTrade Capital

![ChaiTrade Capital Logo](https://placeholder; replace with actual logo if available -->

ChaiTrade Capital is an open-source web-based RPG (Role-Playing Game) designed to teach data engineering, finance, and algorithmic trading in an engaging, gamified way. Targeted at India's millions of traders and gamers, it combines elements of Factorio-like automation building, Scratch-style block programming, and MMO social features to help users learn how to create automated trading bots. The game is set in a virtual fintech office where players progress from interns to expert traders, building strategies with Python previews, PostgresDB integration, and AI assistance.

This MVP (Minimum Viable Product) focuses on a browser-based experience using Ruby on Rails and JavaScript, without relying on game engines. It includes RPG styling, a communal office lobby with live chat and a financial news scroller, guided tutorials, and a visual builder for trading automations. The project emphasizes education on fundamental analysis, Python automation, and basic AI interactivity (inspired by LangChain).

## Key Features

### ChaiTrade Bench 
Inspired by claude plays pokemon and ARC-AGI-3 https://arcprize.org/arc-agi/3/ this benchmark. Play through all the levels in ChaiTrade learn the indian stock market along with building context and meomry to later pick from and then make trades on the platform.

### Core Gameplay and Learning
- **RPG Progression**: Start as a "Novice Trader" and level up through quests, earning "Chai Points" for completing tutorials and building strategies. Progress from Intern to Chief Algo Officer with experience-based leveling.
- **Visual Builder (Scratch-Like Blocks)**: Drag-and-drop interface to construct financial pipelines. Blocks compile to Python code previews, teaching programming basics, data ingestion, ETL processes, and trading automations.
- **Guided Tutorials**: Bite-sized lessons on programming fundamentals, fundamental analysis (e.g., P/E ratios, balance sheets), Python scripting, PostgresDB querying, and bot automation. Includes MOOC-style chapter notes for reading.
- **Financial Data Connectors**: Simulate fetching stock data, news feeds, and historical info stored in PostgresDB. Users design bots that run simulations and export Python code.
- **AI Interactivity**: Basic chatbot for hints, code suggestions, and explanations, mimicking LangChain by chaining prompts (e.g., "Fix my loop" generates tailored advice).

### MMO and Social Elements
- **Office Entrance Lobby**: MMO-style hub with anonymous user avatars, real-time presence, and a central big screen displaying a Hacker News-style scrollable feed of latest financial headlines (pulled from APIs like NewsAPI).
- **Live Chat**: Public chat room in the lobby for discussing strategies (using Action Cable WebSockets). No user comments on news in MVP.
- **Exploration Flow**: Narrative-driven entry with flavor text and simple animations (e.g., "walking" to your desk via CSS/JS transitions) to start tutorials.

### Technical Highlights
- **Tech Stack**:
  - Backend: Ruby on Rails (v8+)
  - Frontend: JavaScript (with options for React), CSS/Sass for styling
  - Database: PostgreSQL for storing user progress, strategies, and simulated data
  - Real-Time: Action Cable for chat and updates
  - Other: Devise for authentication, Redis for production WebSockets
- **Gamification Hooks**: Daily news updates encourage return visits; simulations provide virtual trade results without real trading risks (disclaimers included).
- **Export and Real-World Tie-In**: Generate Python snippets for external use, focusing on libraries like pandas for analysis. I.e design your pipelines with visual editor and then export them as working scripts.

## Installation

### Prerequisites
- Ruby 3.2+
- Node.js 18+
- PostgreSQL
- Redis (for production)

Install via:
```bash
# Ruby (using rbenv)
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
rbenv install 3.2.0
rbenv global 3.2.0

# Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# PostgreSQL
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib libpq-dev

# Redis
sudo apt-get install redis-server
```

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/chaitrade-capital.git
   cd chaitrade-capital
   ```

2. Install dependencies:
   ```bash
   bundle install
   npm install  # or yarn install if using Yarn
   ```

3. Configure environment variables (create `.env` file):
   ```
   DATABASE_USERNAME=your_pg_username
   DATABASE_PASSWORD=your_pg_password
   NEWS_API_KEY=your_newsapi_key  # For news scroller
   ```

4. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed  # If seeds are provided for initial data
   ```

5. Start the server:
   ```bash
   rails server
   ```
   Visit `http://localhost:3000` to play.

For production deployment, use tools like Heroku or Render, and configure Kamal for Rails 8 deployments.

## Usage

1. **Sign Up/Login**: Create an account to enter the ChaiTrade Capital office.
2. **Explore Lobby**: Check the news scroller for market updates and chat with others.
3. **Head to Desk**: Click to transition to your dashboard and start tutorials.
4. **Build Strategies**: Use the drag-and-drop builder to create automations, simulate trades, and preview Python code.
5. **Progress and Learn**: Complete quests to level up, interact with AI for help, and export bots.

**Disclaimer**: This is for educational purposes only. Simulations use mock data; do not use for real trading without professional advice.

## Development Roadmap

### Completed MVP (Week 1 Build)
- Authentication and user progression models.
- Lobby with news scroller and chat.
- Visual builder with block-to-Python compilation.
- Tutorials and AI hint system.
- Basic RPG narratives and animations.

### Future Phases
- **Phase 1: Enhanced Models** - Add portfolios, trades, achievements.
- **Phase 2: Real-Time Integrations** - Expand Action Cable for collaborative features.
- **Phase 3: Visual Upgrades** - Incorporate pixel art for Zelda-like aesthetics.
- **Phase 4: Advanced Builder** - More blocks, full Python execution previews.
- **Phase 5: AI Expansion** - Integrate OpenAI for dynamic responses.
- **Phase 6: Polish and Deploy** - Add sounds, mobile support, competitions.
- **Post-MVP**: Multi-player events, crypto simulations, mobile app.

## Contributing

We welcome contributions! Follow these steps:
1. Fork the repo.
2. Create a feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

Please adhere to the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by Factorio, Scratch, Among Us, and MOOC platforms.
- Built for India's trader-gamer community to make learning algo trading fun and accessible.

For questions, open an issue or contact the maintainers. Happy trading! 🚀
