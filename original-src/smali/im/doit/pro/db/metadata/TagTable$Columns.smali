.class public Lim/doit/pro/db/metadata/TagTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "TagTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/TagTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
