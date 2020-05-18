# 此模板由碎念制作 ┋ This template is made by Sui Nian
# QQ邮箱（主用）：2971802058@qq.com ┋ QQ Postbox（main）：2971802058@qq.com
# QQ邮箱（备用）：2177119873@qq.com ┋ QQ Postbox（spare）：2177119873@qq.com
# 谷歌邮箱：suinian666@gmail.com ┋ gmail：suinian666@gmail.com
# 酷安：http://www.coolapk.com/u/1315644 ┋ Coolapk：http://www.coolapk.com/u/1315644

# 开机之前执行
#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
# 这将使你的脚本更加兼容 即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}

# 这个脚本将以 post-fs-data 模式执行
# 更多信息请访问 Magisk 主题