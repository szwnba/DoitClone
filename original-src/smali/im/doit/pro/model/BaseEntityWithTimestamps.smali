.class public Lim/doit/pro/model/BaseEntityWithTimestamps;
.super Lim/doit/pro/model/BaseTimestampsEntity;
.source "BaseEntityWithTimestamps.java"


# static fields
.field private static final serialVersionUID:J = -0x47f6f0b1270973a5L


# instance fields
.field protected notes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lim/doit/pro/model/BaseTimestampsEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lim/doit/pro/model/BaseEntityWithTimestamps;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lim/doit/pro/model/BaseEntityWithTimestamps;->notes:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/BaseEntityWithTimestamps;->setChanged(Z)V

    .line 21
    return-void
.end method
