.class public Lim/doit/pro/model/Assignment;
.super Ljava/lang/Object;
.source "Assignment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5cb1f4cba694f556L


# instance fields
.field private autocomplete:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/AssignmentItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/AssignmentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/model/Assignment;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAutocomplete()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lim/doit/pro/model/Assignment;->autocomplete:Z

    return v0
.end method

.method public setAutocomplete(Z)V
    .locals 0
    .param p1, "autocomplete"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lim/doit/pro/model/Assignment;->autocomplete:Z

    .line 24
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/AssignmentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/AssignmentItem;>;"
    iput-object p1, p0, Lim/doit/pro/model/Assignment;->items:Ljava/util/ArrayList;

    .line 32
    return-void
.end method
