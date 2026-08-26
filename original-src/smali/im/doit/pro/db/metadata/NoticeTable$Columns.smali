.class public Lim/doit/pro/db/metadata/NoticeTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "NoticeTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/NoticeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final FORCE_POPUP:Ljava/lang/String; = "force_popup"

.field public static final NOTICE_TYPE:Ljava/lang/String; = "notice_type"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final REPEAT_NO:Ljava/lang/String; = "repeat_no"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SENDER_EMAIL:Ljava/lang/String; = "sender_email"

.field public static final SENDER_NICKNAME:Ljava/lang/String; = "sender_nickname"

.field public static final TARGET_ID:Ljava/lang/String; = "target_id"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
