.class public Lim/doit/pro/db/metadata/DailyReviewTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "DailyReviewTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/DailyReviewTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final RATE:Ljava/lang/String; = "rate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
