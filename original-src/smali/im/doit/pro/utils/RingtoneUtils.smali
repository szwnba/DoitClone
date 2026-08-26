.class public Lim/doit/pro/utils/RingtoneUtils;
.super Ljava/lang/Object;
.source "RingtoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtonesName(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .local v10, "ringtones":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Landroid/media/RingtoneManager;

    invoke-direct {v9, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 18
    .local v9, "ringtoneManager":Landroid/media/RingtoneManager;
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 19
    invoke-virtual {v9}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 20
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    const/4 v8, 0x0

    .line 23
    .local v8, "i":I
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 24
    .local v11, "title":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 25
    .local v12, "url":Ljava/lang/String;
    invoke-virtual {v10, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    add-int/lit8 v8, v8, 0x1

    .line 27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 31
    .end local v8    # "i":I
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v5, "title_key"

    move-object v3, v2

    move-object v4, v2

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 33
    .local v7, "externalCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    :cond_2
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 36
    .restart local v11    # "title":Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 37
    .restart local v12    # "url":Ljava/lang/String;
    invoke-virtual {v10, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    return-object v10
.end method

.method public static getSelectedRingtoneTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    .local v11, "title":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getUrlRingtone()Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "ringtoneUri":Ljava/lang/String;
    invoke-static {v10}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance v9, Landroid/media/RingtoneManager;

    invoke-direct {v9, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 49
    .local v9, "ringtoneManager":Landroid/media/RingtoneManager;
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 50
    invoke-virtual {v9}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 51
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const/4 v8, 0x0

    .line 54
    .local v8, "i":I
    :cond_0
    invoke-virtual {v9, v8}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 60
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 64
    const-string v5, "title_key"

    move-object v3, v2

    move-object v4, v2

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 65
    .local v7, "externalCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    :cond_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, "url":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 73
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 76
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "externalCursor":Landroid/database/Cursor;
    .end local v9    # "ringtoneManager":Landroid/media/RingtoneManager;
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {v11}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const v0, 0x7f0c0119

    invoke-static {v0}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 78
    :cond_4
    return-object v11

    .line 58
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "i":I
    .restart local v9    # "ringtoneManager":Landroid/media/RingtoneManager;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    .end local v8    # "i":I
    .restart local v7    # "externalCursor":Landroid/database/Cursor;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method
