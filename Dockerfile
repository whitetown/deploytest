# Step 1: Use Node.js 20 image
FROM node:20-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Step 4: Install dependencies using Yarn
RUN yarn install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Build the Next.js app
RUN yarn build

# Step 7: Expose the port Next.js runs on
EXPOSE 3000

# Step 8: Start the Next.js app
CMD ["yarn", "start"]
