# Step 1: Use Node.js 20 image
FROM node:20-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Step 4: Install dependencies using Yarn
RUN yarn install

ARG BURKINAFASO
RUN echo $BURKINAFASO

RUN printenv

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Branding
RUN ./theme.sh

# Step 7: Build the Next.js app
RUN yarn build

# Step 8: Expose the port Next.js runs on
# EXPOSE 3000

# Step 9: Start the Next.js app
# CMD ["yarn", "start"]
