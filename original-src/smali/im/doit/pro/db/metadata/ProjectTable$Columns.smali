.class public Lim/doit/pro/db/metadata/ProjectTable$Columns;
.super Lim/doit/pro/db/metadata/DCommonColumns;
.source "ProjectTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/ProjectTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ACTIVE_NOTICE:Ljava/lang/String; = "active_notice"

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final END_AT:Ljava/lang/String; = "end_at"

.field public static final FROM_TASK:Ljava/lang/String; = "from_task"

.field public static final GOAL:Ljava/lang/String; = "goal"

.field public static final GROUP_BY:Ljava/lang/String; = "group_by"

.field public static final MEDIAS:Ljava/lang/String; = "medias"

.field public static final POS:Ljava/lang/String; = "pos"

.field public static final REPEAT_NO:Ljava/lang/String; = "repeat_no"

.field public static final START_AT:Ljava/lang/String; = "start_at"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DCommonColumns;-><init>()V

    return-void
.end method
