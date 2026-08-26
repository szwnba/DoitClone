.class public Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;
.super Ljava/lang/Object;
.source "ListViewGroupersAndChildren.java"


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;>;"
        }
    .end annotation
.end field

.field private entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private groupers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->entities:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->groupers:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->children:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public addGrouper(Lim/doit/pro/ui/model/GrouperForListView;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "grouper"    # Lim/doit/pro/ui/model/GrouperForListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/doit/pro/ui/model/GrouperForListView;",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "child":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->groupers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public addGrouper(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lim/doit/pro/model/BaseEntityWithPos;>;"
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->groupers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->groupers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->entities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->groupers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEntities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/BaseEntityWithPos;>;"
    iput-object p1, p0, Lim/doit/pro/activity/listview/group/ListViewGroupersAndChildren;->entities:Ljava/util/ArrayList;

    .line 27
    return-void
.end method
