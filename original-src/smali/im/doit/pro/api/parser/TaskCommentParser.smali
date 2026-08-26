.class public Lim/doit/pro/api/parser/TaskCommentParser;
.super Lim/doit/pro/api/parser/BaseParser;
.source "TaskCommentParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/api/parser/BaseParser",
        "<",
        "Lim/doit/pro/model/TaskComment;",
        ">;"
    }
.end annotation


# static fields
.field private static commentParser:Lim/doit/pro/api/parser/TaskCommentParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lim/doit/pro/api/parser/BaseParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lim/doit/pro/api/parser/TaskCommentParser;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lim/doit/pro/api/parser/TaskCommentParser;->commentParser:Lim/doit/pro/api/parser/TaskCommentParser;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lim/doit/pro/api/parser/TaskCommentParser;

    invoke-direct {v0}, Lim/doit/pro/api/parser/TaskCommentParser;-><init>()V

    sput-object v0, Lim/doit/pro/api/parser/TaskCommentParser;->commentParser:Lim/doit/pro/api/parser/TaskCommentParser;

    .line 12
    :cond_0
    sget-object v0, Lim/doit/pro/api/parser/TaskCommentParser;->commentParser:Lim/doit/pro/api/parser/TaskCommentParser;

    return-object v0
.end method
