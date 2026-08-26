.class public Lim/doit/pro/db/metadata/BoxTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "BoxTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/BoxTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final GROUP_BY:Ljava/lang/String; = "group_by"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final SHOW_ONE:Ljava/lang/String; = "show_one"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
