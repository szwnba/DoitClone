.class public Lim/doit/pro/db/metadata/LastSyncLogTable$Columns;
.super Ljava/lang/Object;
.source "LastSyncLogTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/LastSyncLogTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
