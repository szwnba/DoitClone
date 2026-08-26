.class public Lim/doit/pro/db/metadata/GoalTable$Columns;
.super Lim/doit/pro/db/metadata/DCommonColumns;
.source "GoalTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/GoalTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final GROUP_BY:Ljava/lang/String; = "group_by"

.field public static final POS:Ljava/lang/String; = "pos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DCommonColumns;-><init>()V

    return-void
.end method
