import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 35 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/proxy/doa2bquSpDYjb61RBueGANnzJ4AaMpHyObmji6dzdmgvbl86FwLJ2ca_ha7zpELTjWRmtCjy34Q9TjtC1b7RRL58LitzlOGpHkiba8OFqGJYr4jPuisn'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    "the.italo",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
            'https://images.pexels.com/photos/1696605/pexels-photo-1696605.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: null,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  icon: Icon(
                    Icons.messenger_outline,
                    color: Colors.white,
                  ),
                  onPressed: null,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: null,
                  color: Colors.white,
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                  onPressed: null,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Curtido por nanan e mais 300 pessoas",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "HÁ 1 HORA",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
          if (desktop) ...[
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: "Adicione um comentário",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    "Publicar",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ]
        ],
      ),
    );
  }
}
