module.exports = {
  apps: [
    {
      name: "al-costa-server",
      exec_mode: "cluster",
      instances: "5", // Or a number of instances
      script: "npm",
      args: "start",
      env: {
        PORT: 3000,
      },
    },
  ],
};
