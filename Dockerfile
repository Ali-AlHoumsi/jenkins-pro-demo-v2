# 1. تحديد الصورة الأساسية (ضروري)
FROM node:18-alpine
WORKDIR /app

# 3. نسخ ملفات package*.json من مجلد 'app' وتثبيت الاعتماديات
COPY package*.json ./
RUN npm install
# 4. نسخ باقي ملفات التطبيق من مجلد 'app'
COPY . .
# 5. تحديد المنفذ وأمر التشغيل
EXPOSE 3000
CMD ["node", "index.js"]

