.class public Lim/doit/pro/api/parser/DailyReviewParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "DailyReviewParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/DailyReview;",
        ">;"
    }
.end annotation


# static fields
.field private static dailyReviewParser:Lim/doit/pro/api/parser/DailyReviewParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/DailyReviewParser;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lim/doit/pro/api/parser/DailyReviewParser;->dailyReviewParser:Lim/doit/pro/api/parser/DailyReviewParser;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lim/doit/pro/api/parser/DailyReviewParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/DailyReviewParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/DailyReviewParser;->dailyReviewParser:Lim/doit/pro/api/parser/DailyReviewParser;

    .line 12
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/DailyReviewParser;->dailyReviewParser:Lim/doit/pro/api/parser/DailyReviewParser;

    return-object v0
.end method
