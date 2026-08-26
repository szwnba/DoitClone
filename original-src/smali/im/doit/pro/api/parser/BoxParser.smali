.class public Lim/doit/pro/api/parser/BoxParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/Box;",
        ">;"
    }
.end annotation


# static fields
.field private static boxParser:Lim/doit/pro/api/parser/BoxParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/BoxParser;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lim/doit/pro/api/parser/BoxParser;->boxParser:Lim/doit/pro/api/parser/BoxParser;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lim/doit/pro/api/parser/BoxParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/BoxParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/BoxParser;->boxParser:Lim/doit/pro/api/parser/BoxParser;

    .line 13
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/BoxParser;->boxParser:Lim/doit/pro/api/parser/BoxParser;

    return-object v0
.end method
