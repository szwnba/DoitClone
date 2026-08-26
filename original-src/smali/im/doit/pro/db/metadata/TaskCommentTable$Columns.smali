.class public Lim/doit/pro/db/metadata/TaskCommentTable$Columns;
.super Lim/doit/pro/db/metadata/DCommonColumns;
.source "TaskCommentTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/TaskCommentTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final AUTHOR_EMAIL:Ljava/lang/String; = "auther_email"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final REPEAT_NO:Ljava/lang/String; = "repeat_no"

.field public static final TASK:Ljava/lang/String; = "task"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DCommonColumns;-><init>()V

    return-void
.end method
