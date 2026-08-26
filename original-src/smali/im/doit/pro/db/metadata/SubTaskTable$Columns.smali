.class public Lim/doit/pro/db/metadata/SubTaskTable$Columns;
.super Lim/doit/pro/db/metadata/DCommonColumns;
.source "SubTaskTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/SubTaskTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final POS:Ljava/lang/String; = "pos"

.field public static final REPEAT_NO:Ljava/lang/String; = "repeat_no"

.field public static final TASK:Ljava/lang/String; = "task"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DCommonColumns;-><init>()V

    return-void
.end method
