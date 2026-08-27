.class public interface abstract Lim/doit/pro/ai/AIAssistant$StreamCb;
.super Ljava/lang/Object;
.source "AIAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ai/AIAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamCb"
.end annotation


# virtual methods
.method public abstract onDelta(Ljava/lang/String;)V
.end method

.method public abstract onDone(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method
