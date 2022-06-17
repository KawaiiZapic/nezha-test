[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/KawaiiZapic/nezha-test)
## Nezha-Heroku
Deploy Nezha to heroku, use chisel as gRPC proxy.

## Usage
1. Deploy with button
2. Run chisel on client, mapping 9991 to 5555: `chisel client https://your-container.herokuapp.com/chisel 5555:9991`
3. Run nezha-agent: `nezha-agent -p <secert>`
