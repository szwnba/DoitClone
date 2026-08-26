.class public Lim/doit/pro/db/metadata/FilterTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "FilterTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/FilterTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ASSIGN_TO:Ljava/lang/String; = "assign_to"

.field public static final CONTEXTS:Ljava/lang/String; = "contexts"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final END_AT:Ljava/lang/String; = "end_at"

.field public static final GROUP_BY:Ljava/lang/String; = "group_by"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final ORDER_BY:Ljava/lang/String; = "order_by"

.field public static final POS:Ljava/lang/String; = "pos"

.field public static final PRIORITIES:Ljava/lang/String; = "priorities"

.field public static final PROJECTS:Ljava/lang/String; = "projects"

.field public static final SENDERS:Ljava/lang/String; = "senders"

.field public static final START_AT:Ljava/lang/String; = "start_at"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TAGS:Ljava/lang/String; = "tags"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
