# ตั้งค่าให้ Claude เช็กเกม Yulgang จากมือถือ

1. คัดลอกโฟลเดอร์ `yulgang` นี้ไปไว้ในเครื่องที่เปิดเกม เช่น `C:\Users\<ชื่อคุณ>\yulgang`
2. ทดสอบ: เปิด PowerShell ในโฟลเดอร์นั้น แล้วรัน `powershell -ExecutionPolicy Bypass -File snap.ps1` ต้องได้ไฟล์ `shot.png`
3. เปิด terminal ในโฟลเดอร์นั้น แล้วรัน `claude remote-control` (หรือเพิ่มโฟลเดอร์นี้ใน Claude Desktop > Settings > Claude Code > Remote Control)
4. ตั้ง Windows: Power > Sleep = Never และปิดการล็อกจออัตโนมัติ
5. ออกไปข้างนอกแล้วเปิดแอป Claude บนมือถือ เลือกเซสชันนั้น แล้วพิมพ์ "เช็กเกมหน่อย"
