module.exports = {
  apps: [
    {
      name: 'super-uncle',
      exec_mode: 'cluster',
      instances: 'max',
      script: 'pm2 start rails --interpreter bash --name "rails-web" -- server',
      // args: 'start',
    },
  ],
}